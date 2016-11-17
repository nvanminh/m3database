CREATE TABLE [dbo].[iO_Product_TransactionACC]
(
[RTA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTA_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTA_IDLink_RTM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTA_IDLink_XRB] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTA_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RTA_DateC] [datetime] NULL,
[RTA_Value] [float] NULL,
[RTA_ISProcessed] [bit] NULL,
[RTA_IDUser] [int] NULL,
[RTA_Type] [int] NULL,
[RTA_Date] [datetime] NULL,
[RTA_DateE] [datetime] NULL,
[RTA_Balance] [float] NULL,
[RTA_Rate] [float] NULL,
[RTA_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_TransactionACC] ADD CONSTRAINT [PK_iO_Product_TransactionACC] PRIMARY KEY CLUSTERED  ([RTA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_TransactionACC_2] ON [dbo].[iO_Product_TransactionACC] ([RTA_IDLink_RMR], [RTA_DateE], [RTA_Type], [RTA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_TransactionACC_1] ON [dbo].[iO_Product_TransactionACC] ([RTA_IDLink_RMR], [RTA_ISProcessed], [RTA_Type]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionACC', 'COLUMN', N'RTA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionACC', 'COLUMN', N'RTA_Ownership'
GO
