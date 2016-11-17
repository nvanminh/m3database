CREATE TABLE [dbo].[iO_Product_TransactionACC_History]
(
[RTA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTA_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTA_IDLink_XRB] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTA_DateC] [datetime] NULL,
[RTA_Value] [float] NULL,
[RTA_ISProcessed] [bit] NULL,
[RTA_Type] [int] NULL,
[RTA_DateE] [datetime] NULL,
[RTA_Balance] [float] NULL,
[RTA_Rate] [float] NULL,
[Deleted_Date] [datetime] NULL,
[LocalMachineName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IP_Address] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
