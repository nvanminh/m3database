CREATE TABLE [dbo].[iO_Product_DisbursementTillOps]
(
[RDT_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RDT_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RDT_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDT_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDT_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RDT_IDUser] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDT_Denom_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDT_Count] [int] NULL,
[RDT_Amount] [float] NULL,
[RDT_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_DisbursementTillOps] ADD CONSTRAINT [PK_iO_Product_DisbursementTillOps] PRIMARY KEY CLUSTERED  ([RDT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_DisbursementTillOps', 'COLUMN', N'RDT_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_DisbursementTillOps', 'COLUMN', N'RDT_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_DisbursementTillOps', 'COLUMN', N'RDT_Ownership'
GO
