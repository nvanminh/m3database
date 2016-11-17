CREATE TABLE [dbo].[iO_Client_IndividualLiabilityMaster]
(
[CLLm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLLm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLLm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLm_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLm_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLm_IDLink_XLBo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLm_IDLink_XFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLm_SeqNumber] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CLLm_Type] [int] NULL,
[CLLm_IDUser] [int] NULL,
[CLLm_Value] [float] NULL,
[CLLm_ValuePerYear] [float] NULL,
[CLLm_Maintenance] [float] NULL,
[CLLm_RentBoard] [float] NULL,
[CLLm_Maintenace] [float] NULL,
[CLLm_ChildSupport] [float] NULL,
[CLLm_ValueVerified] [float] NULL,
[CLLm_Other] [float] NULL,
[CLLm_LoanBSB] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLm_LoanAccount] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLm_PaymentMethod] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLm_CurrentForClient] [bit] NULL,
[CLLm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_IndividualLiabilityMaster] ADD CONSTRAINT [PK_iO_Client_IndividualLiabilityMaster] PRIMARY KEY CLUSTERED  ([CLLm_ID]) ON [PRIMARY]
GO
