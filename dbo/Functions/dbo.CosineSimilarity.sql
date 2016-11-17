CREATE FUNCTION [dbo].[CosineSimilarity] (@firstword [nvarchar] (255), @secondword [nvarchar] (255))
RETURNS [float]
WITH EXECUTE AS CALLER
EXTERNAL NAME [TextFunctions].[StringMetrics].[CosineSimilarity]
GO
