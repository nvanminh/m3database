CREATE TABLE [dbo].[iO_Control_ProductPropertyUse]
(
[XRTu_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTu_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTu_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTu_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTu_IDLink_XSCc] [int] NULL,
[XRTu_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTu_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTu_Type] [int] NULL,
[XRTu_IDUser] [int] NULL,
[XRTu_SecurityValue] [int] NULL,
[XRTu_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTu_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTu_B2PKeyword_Sec] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTu_B2PKeyword_Loan] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTu_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyUse] ADD CONSTRAINT [PK_iO_Control_ProductPropertyUse] PRIMARY KEY CLUSTERED  ([XRTu_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyUse', 'COLUMN', N'XRTu_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyUse', 'COLUMN', N'XRTu_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyUse', 'COLUMN', N'XRTu_Ownership'
GO
