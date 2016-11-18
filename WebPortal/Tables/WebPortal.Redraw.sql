CREATE TABLE [WebPortal].[Redraw]
(
[RDW_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RDW_LinkID_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RDW_Create] [datetime] NOT NULL,
[RDW_Expire] [datetime] NOT NULL,
[RDW_MaximumAllowedAmount] [float] NOT NULL,
[RDW_RequestedAmount] [float] NOT NULL,
[RDW_Source] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RDW_Template] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RDW_LastEmailToPrincipalDate] [datetime] NULL,
[RDW_Status] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RDW_LastChangeStatusDate] [datetime] NOT NULL,
[RDW_PrincipalNetPay] [float] NULL,
[RDW_PrincipalNetPayFrequency] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RDW_SecondBorrowerNetPay] [float] NULL,
[RDW_SecondBorrowerNetPayFrequency] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebPortal].[Redraw] ADD CONSTRAINT [PK_Redraw] PRIMARY KEY CLUSTERED  ([RDW_ID]) ON [PRIMARY]
GO
