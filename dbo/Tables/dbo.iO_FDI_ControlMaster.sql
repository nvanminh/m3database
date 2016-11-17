CREATE TABLE [dbo].[iO_FDI_ControlMaster]
(
[FXm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FXm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FXm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FXm_Type] [int] NULL,
[FXm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[FXm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FXm_CardValueCurrent] [bigint] NULL,
[FXm_CardValueIncrement] [bigint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_FDI_ControlMaster] ADD CONSTRAINT [PK_iO_FDI_ControlMaster] PRIMARY KEY CLUSTERED  ([FXm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_FDI_ControlMaster', 'COLUMN', N'FXm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_FDI_ControlMaster', 'COLUMN', N'FXm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_FDI_ControlMaster', 'COLUMN', N'FXm_Ownership'
GO
