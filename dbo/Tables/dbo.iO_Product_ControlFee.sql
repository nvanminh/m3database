CREATE TABLE [dbo].[iO_Product_ControlFee]
(
[RCFe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCFe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCFe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_Parent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_RCFf] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_Due] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_Payable] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCFe_IDUser] [int] NULL,
[RCFe_Type] [int] NULL,
[RCFe_Value] [float] NULL,
[RCFe_GSTValue] [float] NULL,
[RCFe_GSTExclusive] [bit] NULL,
[RCFe_PaymentType] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_ChequeNumber] [int] NULL,
[RCFe_Drawer] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_Bank] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_Branch] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_AccountBSBNo] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_AccountNumber] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_ChequeDated] [datetime] NULL,
[RCFe_Capitalised] [bit] NULL,
[RCFe_Override] [bit] NULL,
[RCFe_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_XFSCm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_IDLink_XSCTm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_ClientName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rcfe_InsExpDate] [datetime] NULL,
[Rcfe_InsComm] [bit] NULL,
[Rcfe_InsCommAmt] [decimal] (18, 2) NULL,
[Rcfe_InsTerm] [int] NULL,
[RCFe_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_ValueP] [float] NULL,
[RCFe_FeeType] [int] NULL,
[RCFe_FlagSelected] [bit] NULL,
[RCFe_FlagEstimate] [bit] NULL,
[RCFe_FlagRefundable] [bit] NULL,
[RCFe_PayableTo] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFe_PayableWhen] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlFee] ADD CONSTRAINT [PK_iO_Product_ControlFee] PRIMARY KEY CLUSTERED  ([RCFe_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlFee] ON [dbo].[iO_Product_ControlFee] ([RCFe_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFee', 'COLUMN', N'RCFe_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFee', 'COLUMN', N'RCFe_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFee', 'COLUMN', N'RCFe_Ownership'
GO
