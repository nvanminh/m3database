CREATE TABLE [dbo].[iO_Control_StatusField]
(
[XSUfdm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSUfdm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSUfdm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUfdm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUfdm_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUfdm_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUfdm_Type] [int] NULL,
[XSUfdm_IDUser] [int] NULL,
[XSUfdm_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUfdm_SecurityValue] [int] NULL,
[XSUfdm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_StatusField] ADD CONSTRAINT [PK_iO_Control_StatusField] PRIMARY KEY CLUSTERED  ([XSUfdm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_StatusField] ON [dbo].[iO_Control_StatusField] ([XSUfdm_IDLink_XSU]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StatusField', 'COLUMN', N'XSUfdm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StatusField', 'COLUMN', N'XSUfdm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StatusField', 'COLUMN', N'XSUfdm_Ownership'
GO
