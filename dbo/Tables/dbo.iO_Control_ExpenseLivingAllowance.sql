CREATE TABLE [dbo].[iO_Control_ExpenseLivingAllowance]
(
[XELA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XELA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XELA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XELA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XELA_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XELA_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XELA_LoanCentre] [int] NULL,
[XELA_Secured] [int] NULL,
[XELA_Term] [int] NULL,
[XELA_Surplus] [float] NULL,
[XELA_Surplus_Perc] [float] NULL,
[XELA_Rent] [float] NULL,
[XELA_Living] [float] NULL,
[XELA_Child] [float] NULL,
[XELA_Utilities] [float] NULL,
[XELA_Travel] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ExpenseLivingAllowance] ADD CONSTRAINT [PK_Control_ExpenseLivingAllowance] PRIMARY KEY CLUSTERED  ([XELA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ExpenseLivingAllowance', 'COLUMN', N'XELA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ExpenseLivingAllowance', 'COLUMN', N'XELA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ExpenseLivingAllowance', 'COLUMN', N'XELA_IDLink_XRP'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ExpenseLivingAllowance', 'COLUMN', N'XELA_Ownership'
GO
