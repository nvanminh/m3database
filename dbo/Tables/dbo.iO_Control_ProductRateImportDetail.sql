CREATE TABLE [dbo].[iO_Control_ProductRateImportDetail]
(
[XRRid_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRid_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRid_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRid_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRid_IDLink_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRid_Value] [float] NULL,
[XRRid_IDLink_XRRim] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRid_IsActioned] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductRateImportDetail] ADD CONSTRAINT [PK_iO_Control_ProductRateImport] PRIMARY KEY CLUSTERED  ([XRRid_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
