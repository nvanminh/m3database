CREATE TABLE [dbo].[iO_Product_ForeignReference]
(
[RFR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RFR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RFR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RFR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RFR_IDLink_Type] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RFR_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RFR_IDLink_ForeignKey] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RFR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RFR_Type] [int] NULL,
[RFR_IDUser] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ForeignReference] ADD CONSTRAINT [PK_iO_Product_ForeignReference] PRIMARY KEY CLUSTERED  ([RFR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ForeignReference', 'COLUMN', N'RFR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ForeignReference', 'COLUMN', N'RFR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ForeignReference', 'COLUMN', N'RFR_Ownership'
GO
