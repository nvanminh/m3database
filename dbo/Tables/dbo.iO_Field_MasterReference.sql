CREATE TABLE [dbo].[iO_Field_MasterReference]
(
[FMRc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FMRc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FMRc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMRc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMRc_IDLink_XFDC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMRc_IDLink_Type] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMRc_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMRc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Field_MasterReference] ADD CONSTRAINT [PK_iO_Field_MasterReference] PRIMARY KEY CLUSTERED  ([FMRc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Field_MasterReference] ON [dbo].[iO_Field_MasterReference] ([FMRc_IDLink_Code], [FMRc_IDLink_XFDC]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Field_MasterReference_83_641437359__K5_K7_K1_6] ON [dbo].[iO_Field_MasterReference] ([FMRc_IDLink_XFDC], [FMRc_IDLink_Code], [FMRc_ID]) INCLUDE ([FMRc_IDLink_Type]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_MasterReference', 'COLUMN', N'FMRc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_MasterReference', 'COLUMN', N'FMRc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_MasterReference', 'COLUMN', N'FMRc_Ownership'
GO
