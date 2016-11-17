CREATE TABLE [dbo].[iO_Status_MasterReference]
(
[SMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_Type] [int] NULL,
[SMR_IDUser] [int] NULL,
[SMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SMR_DateEnter] [datetime] NULL,
[SMR_DateLeave] [datetime] NULL,
[SMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Status_MasterReference] ADD CONSTRAINT [PK_iO_Product_Status] PRIMARY KEY CLUSTERED  ([SMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Status_MasterReference] ON [dbo].[iO_Status_MasterReference] ([SMR_IDLink_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_iO_Status_MasterReference_25_41103237__K6_K1_K10_11] ON [dbo].[iO_Status_MasterReference] ([SMR_IDLink_Code], [SMR_ID], [SMR_SeqNumber]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Status_MasterReference', 'COLUMN', N'SMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Status_MasterReference', 'COLUMN', N'SMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Status_MasterReference', 'COLUMN', N'SMR_Ownership'
GO
