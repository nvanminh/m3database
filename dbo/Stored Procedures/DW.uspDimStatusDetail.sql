SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/* =================================================================================================================
Author		:	Dylan Harvey
Description	:	This is an interim stored procedure to load the dim. 
				This procedure will need to be altered to use a merge statement and potentially be a delta load.
				Load time, Modified time, JobID and Modified job id will need to be added to the schema as well.
				It currently uses 3 part naming, this will need to be fixed at some stage. 

History		:	2015-09-21 Sp Created by Dylan harvey 

===================================================================================================================*/
CREATE PROCEDURE [DW].[uspDimStatusDetail] (
	@ExtractJobID INT
	,@StartTime DATETIME
	)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRY

		IF OBJECT_ID('tempdb..#DimStatusDetail') IS NOT NULL
			DROP TABLE #DimStatusDetail

		SELECT [XSU_ID] StatusPK
			,[XSU_Detail] StatusDetail			
			,reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) [StatusShortName]
			,CASE 
				WHEN [XSU_ID] IN
				(
				'{8441da2e-2ace-4d19-9608-87a5c5acb5a8}'		--Money3\Current
				,'{9109145f-6143-4d0e-96b5-687edb0f1ad5}'		--Money3\Arrears - Arrears Letter
				,'{93ba842a-8662-4657-b464-11f609b8bed8}'		--Money3\Arrears - Special Arrangement
				,'{ae06255a-2fc5-4b90-a081-af3969dbdb82}'		--Money3\Arrears - Payment Plan
				,'{c42ce2db-8732-4d4b-8be2-b6ee111695e5}'		--Money3\Arrears - Hardship
				,'{0927edfd-d426-445d-90b8-5adebd0de1d3}'		--Money3\LACC - Hold
				)
					THEN 'Active'
				WHEN [XSU_ID] IN
				('{56661393-78a1-4cda-8a7d-535fffa8fc5c}'		--Money3\Arrears - Default
				,'{b5b9da80-b0b3-4b63-ac48-57c9f3d36818}'		--Money3\Arrears - Hold
				)
					THEN 'Doubtful'
				WHEN [XSU_ID] IN 
				(
				'{0a168683-788f-4aeb-b04e-5e95075dd33d}'		--Money3\Discharged - Paid in full early discount
				,'{3f09eade-f2e7-4c4b-98d3-7513580cee49}'		--Money3\Discharged - Paid in Full

				,'{eed8f1a7-9615-483e-b234-47ce66f2ee23}'		--Money3\Discharged - Negotiated payout
				)
					THEN 'Discharged'
				WHEN [XSU_ID] IN 
				(
				'{05e4ceb3-1eee-456e-a497-1026c0768ede}'		--Money3\Application - Application Cancelled
				,'{abbd8f3f-51f3-4000-9052-ee6d81b8834c}'		--Money3\Application - Expired Application
				)
					THEN 'Cancelled'
				WHEN [XSU_ID] IN
				(
				'{1aad8074-9af8-4598-a033-c070cf3a49b9}'		--Money3\Application - Unsuccessful - Reason to be reviewed
				,'{2e16b85a-816e-471d-8078-30362ae88042}'		--Money3\Application - Unsuccessful
				)
					THEN 'Declined'
				WHEN [XSU_ID] IN
				(
				'{06fae08f-35a9-4515-9d2c-757a8207a73c}'		--Money3\Collections\Active\Legal\Judgement
				,'{1edfeab9-8e15-4afd-926a-26c8befbaaed}'		--Money3\Collections\Active\DDR Attempt
				,'{4177f94f-193b-4190-b1c0-3036908dfef8}'		--Money3\Collections\Active\External
				,'{48f5ff0f-d997-4ffd-8f0d-06aa33a54b97}'		--Money3\Arrears - Recoveries
				,'{491185db-f116-403a-a86b-484be79c6433}'		--Money3\Collections\InActive\Dead File
				,'{4ccc61f0-a025-4a85-8164-1fad2812b297}'		--Money3\Collections\Active\Valid Phone
				,'{55c2ad7c-63d5-4130-8a87-b94c7184d42d}'		--Money3\Collections\Active\Still to Action
				,'{5e3bed22-27e9-46fd-9bd5-7b6471b02511}'		--Money3\Collections\Active\Investigating
				,'{7e186bd4-ec66-4f94-94b1-e23db8de2c0f}'		--Money3\Collections\Active\Part IX
				,'{86a692cf-76d5-4895-a833-9fbe9052e4d2}'		--Money3\Collections\Active\Legal\Court
				,'{89832085-8e39-457a-b2f6-3ea3e27e2ad6}'		--Money3\Collections\InActive\Settled
				,'{9549f014-69cb-42c7-9d1c-c2cabc8dd6ed}'		--Money3\Collections\Active\Part X
				,'{9a2d8920-3f6b-4176-b353-921015f1305f}'		--Money3\Collections\InActive\Dormant
				,'{a9ca9714-843f-4992-a666-9b30d67c9dfc}'		--Money3\Collections\InActive\Bankrupt
				,'{d2d7cf0d-2f12-4ded-be1e-f0c6a2b871ac}'		--Money3\Collections\Active\Veda Listing
				,'{db15ccef-67de-46e9-9efe-dbfbe2c490fb}'		--Money3\Collections\Active\Legal\Served
				,'{ed4bb803-271d-42db-9cef-6b0f6fb68832}'		--Money3\Collections\Active\Legal\Legal
				,'{f8527bf0-32f4-4fbe-9bbd-ff42001763ea}'		--Money3\Collections\Active\Do Not Action
				,'{ee3cdb17-f540-46bd-aa7e-c5fffb97b5e1}'		--Money3\Internal Current
				,'{42328faf-e454-402a-b0f5-99fe9ca3c64f}'		--Money3\Discharged - Written Off
				,'{4d75bf65-e93c-4741-b7df-bfea892112a2}'		--Money3\Collections\Active\Legal\Attachment
				,'{199b584a-177d-46be-bb48-84c81e374070}'		--Money3\Arrears - Recoveries - HOLD
				,'{5e0a955a-e37d-425d-a7c1-3cd984c6f3f2}'		--Money3\Collections\Active\Payment Plan
				
				)
					THEN 'BadDebt'
				WHEN [XSU_ID] IN
				(
				'{3a311bda-8d87-4226-a4fd-932396cc56d1}'		--Money3\Application - Incomplete Application
				,'{48621d98-a39b-4565-bceb-aadc59f9d213}'		--Money3\Application - Awaiting Emp/Rental
				,'{583cb447-e6e7-4317-9210-158a8a1776c5}'		--Money3\Application - Application Approved
				,'{5921226e-9db6-4778-9874-bca71521d9f5}'		--Money3\Application - Pre Approved
				,'{6a866fa9-ccd9-4a2e-bc65-552f7f7a9251}'		--Money3\Application - Awaiting Further Documents
				,'{95bdb1e1-c63f-40ec-89f9-6586d159ab71}'		--Money3\Application - Application Received
				,'{efd0d3e3-cb01-4df3-a0f2-4da0e211ee91}'		--ARMnet\Loan\Enquiry\Application
				,'{fe0193bd-1e14-4f7e-9a5b-52470ac526b2}'		--Money3\Application - Redirect
				,'{0c8e98df-fe14-4ceb-a093-0297d2aa377b}'		--Money3\Application - Awaiting Customer Contact
				,'{c3ee8d13-e466-465b-bf2d-89f182ebce21}'		--Money3\Application - Application Complete
				,'{22b68082-f44a-448d-871c-3f7c8436119f}'		--Money3\Settlements - Waiting on Docs/Credit Req
				,'{b1afb7ff-5a2c-4cf2-a1b9-209ad6069aa9}'		--Money3\Application - Personal Details
				,'{54b012ac-643e-44ca-9cf9-42f2838c0fad}'		--Money3\Application - Esign
				,'{d77d4723-0ddc-4f56-96ca-f5859515e9a2}'		--Money3\Settlements - Waiting on Welcome Call
				,'{dd165660-4a59-4eec-bfee-4652fff35fcd}'		--Money3\Settlements - Waiting on References
				,'{63cc0ced-d7ff-4fea-b19b-67e613bb86a5}'		--Money3\Application - Credit Guide
				,'{2a41940a-32cb-47ef-b62a-e955e713ded9}'		--Money3\Underwriting - OK for Settlement
				)
					THEN 'WIP'
				ELSE 'UNKNOWN'
				END AS StatusGroup
		INTO #DimStatusDetail
		FROM [dbo].[iO_Control_StatusMaster]

		TRUNCATE TABLE [Interim_Reporting].ExtAPL.[DimStatusDetail]

		INSERT INTO [Interim_Reporting].ExtAPL.[DimStatusDetail]
		(StatusPK
			,StatusDetail
			,StatusShortName
			,StatusGroup
			,[ExtractLoadTime]
			,[ExtractJobId]
			)
		SELECT StatusPK
			,StatusDetail
			,StatusShortName
			,StatusGroup
			,@StartTime 
			,@ExtractJobID 
		FROM #DimStatusDetail
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
