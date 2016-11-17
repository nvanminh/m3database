CREATE TABLE [dbo].[iO_Product_ControlCollectionAllocation]
(
[RCCa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCCa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCCa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCCa_IDUser] [int] NULL,
[RCCa_Type] [int] NULL,
[RCCa_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_DelegatedCMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_Pool] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_SPV] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_Tranche] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_BorrowerCMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_Association] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_AssociationCMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_IDLink_LoanClass] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_AlphaFrom] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_AlphaTo] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_DaysFrom] [int] NULL,
[RCCa_DaysTo] [int] NULL,
[RCCa_LoanCount] [int] NULL,
[RCCa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCa_Priority] [int] NULL,
[RCCa_PriorityOverride] [bit] NULL CONSTRAINT [DF_iO_Product_ControlCollectionAllocation_RCCa_PriorityOverride] DEFAULT ((0))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlCollectionAllocation] ADD CONSTRAINT [PK_iO_Product_ControlCollectionAllocation] PRIMARY KEY CLUSTERED  ([RCCa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlCollectionAllocation', 'COLUMN', N'RCCa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlCollectionAllocation', 'COLUMN', N'RCCa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlCollectionAllocation', 'COLUMN', N'RCCa_Ownership'
GO
