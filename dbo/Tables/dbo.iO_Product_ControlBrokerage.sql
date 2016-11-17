CREATE TABLE [dbo].[iO_Product_ControlBrokerage]
(
[RCBr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCBr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCBr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_IDLink_Parent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_IDLink_RCFf] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_IDLink_Due] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_IDLink_Payable] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCBr_IDUser] [int] NULL,
[RCBr_Type] [int] NULL,
[RCBr_Value] [float] NULL,
[RCBr_GSTValue] [float] NULL,
[RCBr_GSTExclusive] [bit] NULL,
[RCBr_PaymentType] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_ChequeNumber] [int] NULL,
[RCBr_Drawer] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_Bank] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_Branch] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_AccountBSBNo] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_AccountNumber] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCBr_ChequeDated] [datetime] NULL,
[RCBr_Capitalised] [bit] NULL,
[RCBr_Override] [bit] NULL,
[RCBr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlBrokerage] ADD CONSTRAINT [PK_iO_Product_ControlBrokerage] PRIMARY KEY CLUSTERED  ([RCBr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlBrokerage', 'COLUMN', N'RCBr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlBrokerage', 'COLUMN', N'RCBr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlBrokerage', 'COLUMN', N'RCBr_Ownership'
GO
