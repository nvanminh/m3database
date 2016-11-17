CREATE FUNCTION [dbo].[EuclideanDistance] (@firstword [nvarchar] (255), @secondword [nvarchar] (255))
RETURNS [float]
WITH EXECUTE AS CALLER
EXTERNAL NAME [TextFunctions].[StringMetrics].[EuclideanDistance]
GO
