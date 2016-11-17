CREATE TABLE [dbo].[iO_Product_LoanDischargeFees]
(
[RLDf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLDf_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDf_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDf_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDf_IDLink_RLDg] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDf_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDf_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDf_Value] [float] NULL,
[RLDf_ProcessDate] [datetime] NULL,
[RLDf_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLDf_Type] [int] NULL,
[RLDf_IDUser] [int] NULL,
[RLDf_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanDischargeFees] ADD CONSTRAINT [PK_iO_Product_LoanDischargeFees] PRIMARY KEY CLUSTERED  ([RLDf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDischargeFees', 'COLUMN', N'RLDf_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDischargeFees', 'COLUMN', N'RLDf_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDischargeFees', 'COLUMN', N'RLDf_Ownership'
GO
