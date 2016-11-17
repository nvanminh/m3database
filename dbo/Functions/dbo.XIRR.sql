SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[XIRR]
(
	@Sample MyXirrTable READONLY,
	@Rate DECIMAL(19, 9) = 0.1
)
RETURNS DECIMAL(38, 9)
AS
BEGIN
	DECLARE	@LastRate DECIMAL(19, 9),
		@RateStep DECIMAL(19, 9) = 0.1,
		@Residual DECIMAL(19, 9) = 10,
		@LastResidual DECIMAL(19, 9) = 1,
		@i TINYINT = 0

	IF @Rate IS NULL
		SET	@Rate = 0.1

	SET @LastRate = @Rate

	WHILE @i < 100 AND ABS((@LastResidual - @Residual) / @LastResidual) > 0.00000001
		BEGIN
			SELECT	@LastResidual = @Residual,
				@Residual = 0

			SELECT	@Residual = @Residual + theValue / POWER(1 + @Rate, theDelta / 365.0E)
			FROM	(
					SELECT	theValue,
						DATEDIFF(DAY, MIN(theDate) OVER (), theDate) AS theDelta
					FROM	@Sample
			 	) AS d

			SET	@LastRate = @Rate

			If @Residual >= 0
				SET @Rate += @RateStep
			ELSE
				SELECT	@RateStep /= 2,
					@Rate -= @RateStep

			SET	@i += 1
		END

	RETURN	@LastRate
END

GO
