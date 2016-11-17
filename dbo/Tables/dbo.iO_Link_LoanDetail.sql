CREATE TABLE [dbo].[iO_Link_LoanDetail]
(
[LLD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LLD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LLD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LLD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LLD_IDLink_LMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LLD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[LLD_IDUser] [int] NULL,
[LLD_Type] [int] NULL,
[LLD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Link_LoanDetail] ADD CONSTRAINT [PK_iO_Link_LoanDetail] PRIMARY KEY CLUSTERED  ([LLD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_LoanDetail', 'COLUMN', N'LLD_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_LoanDetail', 'COLUMN', N'LLD_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_LoanDetail', 'COLUMN', N'LLD_Ownership'
GO
