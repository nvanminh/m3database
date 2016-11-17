SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- ====================================================================================
-- Author		:	Dylan Harvey
-- Description	:	This stored procedure Checks if a users credentials are correct. 
--					If they are return required customers details.
--					If not, return error code applicable.
--
-- History		:	2015-07-10 Sp Created by Dylan harvey 
--
-- ====================================================================================
CREATE PROCEDURE [WebPortal].[uspMembersArea] (
	@MAUserName NVARCHAR(255) 
	,@Password NVARCHAR(60)
	,@IpAddress NVARCHAR(50)
	,@DisplayBrand NVARCHAR(50)
	
	,@status_code SMALLINT OUTPUT
		,@client_id VARCHAR(50) OUTPUT
		,@title NVARCHAR(50) OUTPUT
		,@first_name NVARCHAR(50) OUTPUT
		,@last_name NVARCHAR(50) OUTPUT
		,@mobile_phone NVARCHAR(50) OUTPUT
		,@Email NVARCHAR(255) OUTPUT

	)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON

	DECLARE @LoginSuccess SMALLINT
	DECLARE @LoginDate DATETIME = GETDATE()
	DECLARE @Loginattempts INT

	IF (@DisplayBrand IS NULL)
		SET @DisplayBrand = 'M3'

	BEGIN TRY

	

		SELECT @Loginattempts = COUNT(*)		
		FROM  [WebPortal].[LoginRecord]
		WHERE ([IPAddress] = @IpAddress OR [UserName] = @MAUserName)
		AND [LoginSuccess] = 1 
		AND [DisplayBrand] = @DisplayBrand
		AND [LoginDate] > DATEADD (minute, - 30, @LoginDate)

		IF @Loginattempts >= 50
				
		BEGIN	
		SELECT @status_code = 4
			INSERT INTO [WebPortal].[LoginRecord] (
				[UserName]
				,[IPAddress]
				,[LoginSuccess]
				,[LoginDate]
				,[StatusCode]
				,[DisplayBrand]
				)
			VALUES (
				@MAUserName
				,@IpAddress
				,1 -- Unsuccessful
				,@LoginDate
				,@status_code
				,@DisplayBrand
				)
		END
		ELSE
		
		-- Incorrect Username
		IF NOT EXISTS (
				SELECT *
				FROM [WebPortal].[Client_Login]
				WHERE [CLO_UserName] = @MAUserName
					AND [CLO_DisplayBrand] = @DisplayBrand
				)
		BEGIN
			SELECT @status_code = 3

			INSERT INTO [WebPortal].[LoginRecord] (
				[UserName]
				,[IPAddress]
				,[LoginSuccess]
				,[LoginDate]
				,[StatusCode]
				,[DisplayBrand]
				)
			VALUES (
				@MAUserName
				,@IpAddress
				,1 -- Unsuccessful
				,@LoginDate
				,@status_code
				,@DisplayBrand
				)
		END
		ELSE

		-- Incorrect Password
		IF EXISTS (
				SELECT *
				FROM [WebPortal].[Client_Login]
				WHERE [CLO_UserName] = @MAUserName
					AND [CLO_DisplayBrand] = @DisplayBrand
					AND [CLO_Password] <> @Password
				)
		BEGIN
			SELECT @status_code = 2

			INSERT INTO [WebPortal].[LoginRecord] (
				[UserName]
				,[IPAddress]
				,[LoginSuccess]
				,[LoginDate]
				,[StatusCode]
				,[DisplayBrand]
				)
			VALUES (
				@MAUserName
				,@IpAddress
				,1 -- Unsuccessful
				,@LoginDate
				,@status_code
				,@DisplayBrand
				)
		END
		ELSE
		-- Correct Password and Username
		IF EXISTS (
				SELECT *
				FROM [WebPortal].[Client_Login]
				WHERE [CLO_UserName] = @MAUserName
					AND [CLO_DisplayBrand] = @DisplayBrand
					AND [CLO_Password] = @Password
				)
		BEGIN
			SELECT @status_code = 1
			SELECT @Email = @MAUserName 

			-- Get Client Id
			SELECT @client_id = [CLO_IDLink_CMR]
			FROM [WebPortal].[Client_Login]
			WHERE [CLO_UserName] = @MAUserName
				AND [CLO_Password] = @Password
				AND [CLO_DisplayBrand] = @DisplayBrand

			SELECT @title = LTRIM(RTRIM(CCT.XCTi_Detail))
				,@first_name = LTRIM(RTRIM(CTI.CTI_FirstName))
				,@last_name = LTRIM(RTRIM(CTI.CTI_Surname))
				,@mobile_phone = LTRIM(RTRIM(ccd_Mobile.CCD_Details))
			FROM iO_Client_MasterReference CMR
			LEFT JOIN iO_Client_TypeIndividual CTI ON CTI.CTI_IDLInk_CMR = CMR.CMR_ID
			LEFT JOIN [dbo].[iO_Control_ClientTitle] CCT ON CTI.[CTI_IDLink_XCT] = CCT.XCTI_ID
			LEFT JOIN (
				SELECT CCD_IDLink_CMR
					,CCD_Details
					,row_number() OVER (
						PARTITION BY CCD_IDLink_CMR ORDER BY CCD_SeqNumber DESC
						) AS RowNum
				FROM io_client_contactdetail ccd_Mobile
				WHERE (
						ccd_Mobile.CCD_IDLink_XCT = '{29411831-e939-4357-940a-44f55b4a5c9b}' -- MB
						AND ccd_Mobile.CCD_Details NOT LIKE '%disc%'
						AND ccd_Mobile.CCD_Details NOT LIKE '%dc%'
						AND ccd_Mobile.CCD_Details NOT LIKE '%d/c%'
						AND ccd_Mobile.CCD_Details NOT LIKE '%wro%'
						AND ccd_Mobile.CCD_Details NOT LIKE ''
						)
				) ccd_Mobile ON ccd_Mobile.CCD_IDLink_CMR = CMR.cmr_id
				AND ccd_Mobile.RowNum = 1
			WHERE CMR.CMR_ID = @client_id

			INSERT INTO [WebPortal].[LoginRecord] (
				[IPAddress]
				,[UserName]
				,[LoginSuccess]
				,[ClientID]
				,[LoginDate]
				,[StatusCode]
				,[DisplayBrand]
				)
			VALUES (
				@IpAddress
				,@MAUserName
				,0 -- Successful
				,@client_id
				,@LoginDate
				,@status_code
				,@DisplayBrand
				)
		END

	END TRY

	BEGIN CATCH
		/* rollback transaction if there is open transaction */
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		/* throw the catched error to trigger the error in SSIS package */
		DECLARE @ErrorMessage NVARCHAR(4000)
			,@ErrorNumber INT
			,@ErrorSeverity INT
			,@ErrorState INT
			,@ErrorLine INT
			,@ErrorProcedure NVARCHAR(200)

		/* Assign variables to error-handling functions that capture information for RAISERROR */
		SELECT @ErrorNumber = ERROR_NUMBER()
			,@ErrorSeverity = ERROR_SEVERITY()
			,@ErrorState = ERROR_STATE()
			,@ErrorLine = ERROR_LINE()
			,@ErrorProcedure = ISNULL(ERROR_PROCEDURE(), '-')

		/* Building the message string that will contain original error information */
		SELECT @ErrorMessage = N'Error %d, Level %d, State %d, Procedure %s, Line %d, ' + 'Message: ' + ERROR_MESSAGE()

		/* Raise an error: msg_str parameter of RAISERROR will contain the original error information */
		RAISERROR (
				@ErrorMessage
				,@ErrorSeverity
				,1
				,@ErrorNumber
				,@ErrorSeverity
				,@ErrorState
				,@ErrorProcedure
				,@ErrorLine
				)
	END CATCH

	--Finally Section
	/* clean up the temporary table */
	IF OBJECT_ID('tempdb..#Temp') IS NOT NULL
		DROP TABLE #Temp
END


GO
