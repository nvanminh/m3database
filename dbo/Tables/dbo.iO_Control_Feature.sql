CREATE TABLE [dbo].[iO_Control_Feature]
(
[XFA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFA_IDLink_XSCc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFA_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFA_Type] [int] NULL,
[XFA_IDUser] [int] NULL,
[XFA_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFA_SecurityValue] [int] NULL,
[XFA_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFA_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFA_AlternateDetail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_Feature] ADD CONSTRAINT [PK_iO_Control_Feature] PRIMARY KEY CLUSTERED  ([XFA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_iO_Control_Feature_25_653245382__K8_1] ON [dbo].[iO_Control_Feature] ([XFA_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Feature', 'COLUMN', N'XFA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Feature', 'COLUMN', N'XFA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Feature', 'COLUMN', N'XFA_Ownership'
GO
