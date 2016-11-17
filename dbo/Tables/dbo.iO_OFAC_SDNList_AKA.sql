CREATE TABLE [dbo].[iO_OFAC_SDNList_AKA]
(
[OSLk_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OSLk_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLk_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLk_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLk_IDLink_OSLm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLk_NameFirst] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLk_NameLast] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLk_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_OFAC_SDNList_AKA] ADD CONSTRAINT [PK_iO_OFAC_SDNList_AKA] PRIMARY KEY CLUSTERED  ([OSLk_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_OFAC_SDNList_AKA', 'COLUMN', N'OSLk_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_OFAC_SDNList_AKA', 'COLUMN', N'OSLk_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_OFAC_SDNList_AKA', 'COLUMN', N'OSLk_Ownership'
GO
