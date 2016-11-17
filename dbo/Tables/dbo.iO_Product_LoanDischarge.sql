CREATE TABLE [dbo].[iO_Product_LoanDischarge]
(
[RLDg_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLDg_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLDg_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDg_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDg_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDg_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDg_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLDg_ProcessDate] [datetime] NULL,
[RLDg_Value] [float] NULL,
[RLDg_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDg_Type] [int] NULL,
[RLDg_IDUser] [int] NULL,
[RLDg_IDLink_XRDcr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDg_QuoteType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDg_DischargeDate] [datetime] NULL,
[RLDg_AnticipatedDate] [datetime] NULL,
[RLDg_PrincipalAmount] [float] NULL,
[RLDg_InterestAccrued] [float] NULL,
[RLDg_DeferredEstabFee] [float] NULL,
[RLDg_UnclearedFunds] [float] NULL,
[RLDg_AnticipatedDischargeTime] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDg_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDg_As_At_LVR] [float] NULL,
[RLDg_DischargedOn] [datetime] NULL,
[RLDg_Discount] [float] NULL,
[RLDg_IDLink_RLR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDg_Original_NSF_Fee] [decimal] (18, 0) NULL,
[RLDg_Original_OutStanding_Fee] [decimal] (18, 0) NULL,
[RLDg_Original_Penalty_Interest] [decimal] (18, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanDischarge] ADD CONSTRAINT [PK_iO_Product_LoanDischarge] PRIMARY KEY CLUSTERED  ([RLDg_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDischarge', 'COLUMN', N'RLDg_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDischarge', 'COLUMN', N'RLDg_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDischarge', 'COLUMN', N'RLDg_Ownership'
GO
