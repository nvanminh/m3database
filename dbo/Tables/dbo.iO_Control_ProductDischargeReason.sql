CREATE TABLE [dbo].[iO_Control_ProductDischargeReason]
(
[XRDcr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRDcr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDcr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDcr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDcr_IDLink_XSCc] [int] NULL,
[XRDcr_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDcr_Type] [int] NULL,
[XRDcr_IDUser] [int] NULL,
[XRDcr_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDcr_SecurityValue] [int] NULL,
[XRDcr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDcr_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductDischargeReason] ADD CONSTRAINT [PK_iO_Control_ProductDischargeReason] PRIMARY KEY CLUSTERED  ([XRDcr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductDischargeReason', 'COLUMN', N'XRDcr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductDischargeReason', 'COLUMN', N'XRDcr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductDischargeReason', 'COLUMN', N'XRDcr_Ownership'
GO
