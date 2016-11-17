CREATE TABLE [dbo].[iO_Link_InvestmentDetail]
(
[LID_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LID_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LID_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LID_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LID_IDLink_LMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LID_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[LID_IDUser] [int] NULL,
[LID_Type] [int] NULL,
[LID_AmountInvested] [float] NULL,
[LID_AmountReallocated] [float] NULL,
[LID_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Link_InvestmentDetail] ADD CONSTRAINT [PK_iO_Link_InvestmentDetail] PRIMARY KEY CLUSTERED  ([LID_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_InvestmentDetail', 'COLUMN', N'LID_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_InvestmentDetail', 'COLUMN', N'LID_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_InvestmentDetail', 'COLUMN', N'LID_Ownership'
GO
