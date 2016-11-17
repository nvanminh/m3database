CREATE TABLE [dbo].[iO_Control_ProductDeclineReason]
(
[XRDr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRDr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRDr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDr_IDLink_XSCc] [int] NULL,
[XRDr_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDr_Type] [int] NULL,
[XRDr_IDUser] [int] NULL,
[XRDr_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDr_SecurityValue] [int] NULL,
[XRDr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRDr_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductDeclineReason] ADD CONSTRAINT [PK_iO_Control_ProductDeclineReason] PRIMARY KEY CLUSTERED  ([XRDr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductDeclineReason', 'COLUMN', N'XRDr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductDeclineReason', 'COLUMN', N'XRDr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductDeclineReason', 'COLUMN', N'XRDr_Ownership'
GO
