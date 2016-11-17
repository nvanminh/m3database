CREATE TABLE [dbo].[iO_Control_LiabilitiesOther]
(
[XLBo_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XLBo_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XLBo_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBo_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBo_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBo_IDUser] [int] NULL,
[XLBo_IDLink_XSCc] [int] NULL,
[XLBo_SecurityValue] [int] NULL,
[XLBo_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBo_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBo_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_LiabilitiesOther] ADD CONSTRAINT [PK_iO_Control_LiabilitiesOther] PRIMARY KEY CLUSTERED  ([XLBo_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LiabilitiesOther', 'COLUMN', N'XLBo_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LiabilitiesOther', 'COLUMN', N'XLBo_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LiabilitiesOther', 'COLUMN', N'XLBo_Ownership'
GO
