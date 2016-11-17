CREATE TABLE [dbo].[iO_Product_LoanCosts]
(
[RLCt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLCt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLCt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLCt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLCt_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLCt_IDLink_XCTc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLCt_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLCt_IDUser] [int] NULL,
[RLCt_Amount] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanCosts] ADD CONSTRAINT [PK_iO_Product_LoanCosts] PRIMARY KEY CLUSTERED  ([RLCt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanCosts', 'COLUMN', N'RLCt_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanCosts', 'COLUMN', N'RLCt_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanCosts', 'COLUMN', N'RLCt_Ownership'
GO
