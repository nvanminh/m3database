CREATE FUNCTION [dbo].[ChapmanLengthDeviation] (@firstword [nvarchar] (255), @secondword [nvarchar] (255))
RETURNS [float]
WITH EXECUTE AS CALLER
EXTERNAL NAME [TextFunctions].[StringMetrics].[ChapmanLengthDeviation]
GO
