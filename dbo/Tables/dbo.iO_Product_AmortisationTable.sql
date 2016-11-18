CREATE TABLE [dbo].[iO_Product_AmortisationTable]
(
[RAT_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RAT_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAT_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAT_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAT_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RAT_Type] [int] NULL,
[RAT_IDUser] [int] NULL,
[RAT_RepaymentDueDate] [datetime] NULL,
[RAT_RepaymentAmount] [float] NULL,
[RAT_InterestAmount] [float] NULL,
[RAT_PrincipalAmount] [float] NULL,
[RAT_Balance] [float] NULL,
[RAT_FeeAmount] [float] NULL,
[RAT_IDLink_PaymentMethod] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAT_ScheduleType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAT_SuspendedInterestAmount] [float] NULL,
[RAT_SuspendedInterestBalance] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_AmortisationTable] ADD CONSTRAINT [PK__iO_Produ__3BBCA7B9A61551E1] PRIMARY KEY CLUSTERED  ([RAT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
