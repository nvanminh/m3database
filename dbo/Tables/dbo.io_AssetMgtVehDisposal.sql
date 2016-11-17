CREATE TABLE [dbo].[io_AssetMgtVehDisposal]
(
[ASVd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASVd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASVd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVd_IDLink_ASV] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVd_IDLink_Buyer] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVd_IDLink_XDT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ASVd_IDUser] [int] NULL,
[ASVd_Code] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVd_Reference] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVd_CaseNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVd_Amount] [float] NULL,
[ASVd_Date] [datetime] NULL,
[ASVd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[io_AssetMgtVehDisposal] ADD CONSTRAINT [PK_io_AssetMgtVehDisposal] PRIMARY KEY CLUSTERED  ([ASVd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'io_AssetMgtVehDisposal', 'COLUMN', N'ASVd_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'io_AssetMgtVehDisposal', 'COLUMN', N'ASVd_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'io_AssetMgtVehDisposal', 'COLUMN', N'ASVd_Ownership'
GO
