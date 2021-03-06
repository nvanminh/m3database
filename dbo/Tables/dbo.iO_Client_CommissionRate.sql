CREATE TABLE [dbo].[iO_Client_CommissionRate]
(
[CCM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCM_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCM_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCM_IDLink_XPM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCM_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CCM_IDUser] [int] NULL,
[CCM_Type] [int] NULL,
[CCM_LodgementType] [int] NULL,
[CCM_Trailer] [float] NULL,
[CCM_Upfront] [float] NULL,
[CCM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCM_LOCoption] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CommissionRate] ADD CONSTRAINT [PK_iO_Client_CommissionRate] PRIMARY KEY CLUSTERED  ([CCM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_CommissionRate] ON [dbo].[iO_Client_CommissionRate] ([CCM_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CommissionRate', 'COLUMN', N'CCM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CommissionRate', 'COLUMN', N'CCM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CommissionRate', 'COLUMN', N'CCM_Ownership'
GO
