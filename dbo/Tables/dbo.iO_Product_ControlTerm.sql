CREATE TABLE [dbo].[iO_Product_ControlTerm]
(
[RCTe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTe_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTe_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCTe_Type] [int] NULL,
[RCTe_IDUser] [int] NULL,
[RCTe_Years] [int] NULL,
[RCTe_Months] [int] NULL,
[RCTe_Days] [int] NULL,
[RCTe_TotalMonths] [int] NULL,
[RCTe_TotalPeriods] [int] NULL,
[RCTe_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlTerm] ADD CONSTRAINT [PK_iO_Product_ControlTerm] PRIMARY KEY CLUSTERED  ([RCTe_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Product_ControlTerm_83_558677088__K7_K5_K1_9_10_11] ON [dbo].[iO_Product_ControlTerm] ([RCTe_Type], [RCTe_IDLink_RMR], [RCTe_ID]) INCLUDE ([RCTe_Days], [RCTe_Months], [RCTe_Years]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlTerm', 'COLUMN', N'RCTe_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlTerm', 'COLUMN', N'RCTe_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlTerm', 'COLUMN', N'RCTe_Ownership'
GO
