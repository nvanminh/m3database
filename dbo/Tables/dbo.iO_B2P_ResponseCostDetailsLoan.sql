CREATE TABLE [dbo].[iO_B2P_ResponseCostDetailsLoan]
(
[PEcl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PEcl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcl_IDLink_PErl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcl_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PEcl_TypeEnum] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcl_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcl_Amount] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_ResponseCostDetailsLoan] ADD CONSTRAINT [PK_iO_B2P_ResponseCostDetailsLoan] PRIMARY KEY CLUSTERED  ([PEcl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseCostDetailsLoan', 'COLUMN', N'PEcl_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseCostDetailsLoan', 'COLUMN', N'PEcl_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseCostDetailsLoan', 'COLUMN', N'PEcl_Ownership'
GO
