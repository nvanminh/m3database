CREATE TABLE [dbo].[iO_B2P_ResponseCostDetailsMain]
(
[PEcm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PEcm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcm_IDLink_PErc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PEcm_TypeEnum] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcm_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEcm_Amount] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_ResponseCostDetailsMain] ADD CONSTRAINT [PK_iO_B2P_ResponseCostDetailsMain] PRIMARY KEY CLUSTERED  ([PEcm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseCostDetailsMain', 'COLUMN', N'PEcm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseCostDetailsMain', 'COLUMN', N'PEcm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseCostDetailsMain', 'COLUMN', N'PEcm_Ownership'
GO
