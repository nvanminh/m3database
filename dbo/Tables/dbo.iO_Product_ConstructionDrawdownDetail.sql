CREATE TABLE [dbo].[iO_Product_ConstructionDrawdownDetail]
(
[RCDD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCDD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDD_IDLink_XTRM_Drawdown] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDD_IDLink_CMR_Payee] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDD_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDD_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDD_Type] [int] NULL,
[RCDD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCDD_IDUser] [int] NULL,
[RCDD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDD_PaymentMethod] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDD_Amount] [float] NULL,
[RCDD_InspectionReport] [bit] NULL,
[RCDD_DateReceived] [datetime] NULL,
[RCDD_DatePaid] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ConstructionDrawdownDetail] ADD CONSTRAINT [PK_iO_Product_ConstructionDrawdownDetail] PRIMARY KEY CLUSTERED  ([RCDD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ConstructionDrawdownDetail', 'COLUMN', N'RCDD_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ConstructionDrawdownDetail', 'COLUMN', N'RCDD_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ConstructionDrawdownDetail', 'COLUMN', N'RCDD_Ownership'
GO
