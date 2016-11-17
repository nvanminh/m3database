SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE FUNCTION [dbo].[NeedlemanWunch] (@firstword [nvarchar] (255), @secondword [nvarchar] (255))
RETURNS [float]
WITH EXECUTE AS CALLER
EXTERNAL NAME [TextFunctions].[StringMetrics].[NeedlemanWunch]
GO
