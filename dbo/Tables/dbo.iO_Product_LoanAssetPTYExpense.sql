CREATE TABLE [dbo].[iO_Product_LoanAssetPTYExpense]
(
[RLAe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLAe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_IDLink_RLAp] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_RentBoard] [float] NULL,
[RLAe_Maintenace] [float] NULL,
[RLAe_ChildSupport] [float] NULL,
[RLAe_Other] [float] NULL,
[RLAe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_SeqNumber] [bigint] NULL,
[RLAe_IDLink_XFPE] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_IDUser] [int] NULL,
[RLAe_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_IDLink_XLBo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_IDLink_XFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_LoanBSB] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_LoanAccount] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_Value] [float] NULL,
[RLAe_ValuePerYear] [float] NULL,
[RLAe_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_Maintenance] [float] NULL,
[RLAe_PEGA_HPI] [float] NULL,
[RLAe_PEGA_Total] [float] NULL,
[RLAe_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_Type] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanAssetPTYExpense] ADD CONSTRAINT [PK_iO_Product_LoanAssetPTYExpense] PRIMARY KEY CLUSTERED  ([RLAe_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
