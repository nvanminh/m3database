SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE FUNCTION [dbo].[QGramsDistance] (@firstword [nvarchar] (255), @secondword [nvarchar] (255))
RETURNS [float]
WITH EXECUTE AS CALLER
EXTERNAL NAME [TextFunctions].[StringMetrics].[QGramsDistance]
GO
