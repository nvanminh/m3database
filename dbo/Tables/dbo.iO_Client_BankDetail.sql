CREATE TABLE [dbo].[iO_Client_BankDetail]
(
[CBD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CBD_IDUser] [int] NULL,
[CBD_Type] [int] NULL,
[CBD_AccountName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_AccountBSBNo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_AccountNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_BankName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_BranchLocation] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_Default] [bit] NULL,
[CBD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_Default_DD] [bit] NULL,
[CBD_ActiveAccount] [bit] NULL,
[CBD_DirectDebit] [bit] NULL,
[CBD_Redraw] [bit] NULL,
[CBD_PayAnyone] [bit] NULL,
[CBD_AccountTransitNo_CAN] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_AccountInstitutionNo_CAN] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBD_AccTimeYears] [int] NULL,
[cbd_AccTimeMonths] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_BankDetail] ADD CONSTRAINT [PK_iO_Client_BankDetail] PRIMARY KEY CLUSTERED  ([CBD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-181534] ON [dbo].[iO_Client_BankDetail] ([CBD_AccountBSBNo]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iO_Client_BankDetail_CMR] ON [dbo].[iO_Client_BankDetail] ([CBD_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_BankDetail', 'COLUMN', N'CBD_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_BankDetail', 'COLUMN', N'CBD_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_BankDetail', 'COLUMN', N'CBD_Ownership'
GO
