SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE FUNCTION [dbo].[CompareStringMetrics](@firstword [nvarchar](255), @secondword [nvarchar](255))
RETURNS TABLE
AS
RETURN
(
	SELECT dbo.Jaro(@firstword, @secondword) as Score, 'Jaro' as Metric
	UNION SELECT dbo.JaroWinkler(@firstword, @secondword), 'JaroWinkler'
	UNION SELECT dbo.BlockDistance(@firstword, @secondword), 'BlockDistance'
	UNION SELECT dbo.ChapmanLengthDeviation(@firstword, @secondword), 'ChapmanLengthDeviation'
	UNION SELECT dbo.ChapmanMeanLength(@firstword, @secondword), 'ChapmanMeanLength'
	UNION SELECT dbo.CosineSimilarity(@firstword, @secondword), 'CosineSimilarity'
	UNION SELECT dbo.DiceSimilarity(@firstword, @secondword), 'DiceSimilarity'
	UNION SELECT dbo.EuclideanDistance(@firstword, @secondword), 'EuclideanDistance'
	UNION SELECT dbo.JaccardSimilarity(@firstword, @secondword), 'JaccardSimilarity' 
	UNION SELECT dbo.Levenstein(@firstword, @secondword), 'Levenstein'
	UNION SELECT dbo.MatchingCoefficient(@firstword, @secondword), 'MatchingCoefficient'
	UNION SELECT dbo.MongeElkan(@firstword, @secondword), 'MongeElkan'
	UNION SELECT dbo.NeedlemanWunch(@firstword, @secondword), 'NeedlemanWunch'
	UNION SELECT dbo.OverlapCoefficient(@firstword, @secondword), 'OverlapCoefficient'
	UNION SELECT dbo.QGramsDistance(@firstword, @secondword), 'QGramsDistance'
	UNION SELECT dbo.SmithWaterman(@firstword, @secondword), 'SmithWaterman'
	UNION SELECT dbo.SmithWatermanGotoh(@firstword, @secondword), 'SmithWatermanGotoh'
	UNION SELECT dbo.SmithWatermanGotohWindowedAffine(@firstword, @secondword), 'SmithWatermanGotohWindowedAffine'
)

GO
