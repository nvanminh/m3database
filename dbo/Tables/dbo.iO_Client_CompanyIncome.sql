CREATE TABLE [dbo].[iO_Client_CompanyIncome]
(
[CINP_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CINP_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CINP_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINP_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINP_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINP_ProfitBeforeTax] [float] NULL,
[CINP_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CINP_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CINP_Type] [int] NULL,
[CINP_IDUser] [int] NULL,
[CINp_Value] [float] NULL,
[CINp_ValueVerified] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CompanyIncome] ADD CONSTRAINT [PK_iO_Client_CompanyIncome] PRIMARY KEY CLUSTERED  ([CINP_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_CompanyIncome] ON [dbo].[iO_Client_CompanyIncome] ([CINP_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CompanyIncome', 'COLUMN', N'CINP_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CompanyIncome', 'COLUMN', N'CINP_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CompanyIncome', 'COLUMN', N'CINP_Ownership'
GO
