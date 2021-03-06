CREATE TABLE [dbo].[iO_B2B_DetailSecuritiesLodged]
(
[BBdl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdl_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdl_Source] [int] NULL,
[BBdl_DateRegistered] [datetime] NULL,
[BBdl_SecTypeCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdl_SecTypeDesc] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdl_SecNum] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdl_TrusteeName] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdl_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailSecuritiesLodged] ADD CONSTRAINT [PK_iO_B2B_DetailSecuritiesLodged] PRIMARY KEY CLUSTERED  ([BBdl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailSecuritiesLodged', 'COLUMN', N'BBdl_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailSecuritiesLodged', 'COLUMN', N'BBdl_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailSecuritiesLodged', 'COLUMN', N'BBdl_Ownership'
GO
