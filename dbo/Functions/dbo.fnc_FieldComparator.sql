CREATE FUNCTION [dbo].[fnc_FieldComparator](
	@FirstValue VARCHAR(MAX),
	@SecondValue VARCHAR(MAX),
	@CompareKey VARCHAR(200),
	@CompareType VARCHAR(100) = 'MatchExactly'
) RETURNS INT
AS
BEGIN
	IF (@FirstValue IS NULL OR @SecondValue IS NULL)
		RETURN 0

	IF (@CompareType = 'FuzzySearch')
	BEGIN
		-- Using the Fuzzy Search to get the matching rate for comparing values
		DECLARE @matchingRate FLOAT
		
		-- Using SimMetric Function
		EXEC @matchingRate = dbo.JaroWinkler @FirstValue, @SecondValue
		
		-- Using Similarity (Master Data Service) Function
		--EXEC @matchingRate = MasterDataServices.mdq.Similarity @FirstValue, @SecondValue, 3 , 0, 0

		-- Matching with the DuplicatorParameters to decide if it matched or not
		DECLARE @standardRate FLOAT
		SELECT @standardRate = ComparatorWeight
		FROM DuplicatorParameters
		WHERE ComparatorKey = @CompareKey

		IF (@matchingRate >= @standardRate)
			RETURN 1
		ELSE 
			RETURN 0
	END
	ELSE -- MatchExactly
	BEGIN
		IF (@FirstValue = @SecondValue)
			RETURN 1
	END

	RETURN 0
END

GO
