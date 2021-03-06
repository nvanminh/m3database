CREATE TABLE [dbo].[iO_Product_ConstructionDrawdownMaster]
(
[RCDM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCDM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDM_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDM_Type] [int] NULL,
[RCDM_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCDM_IDUser] [int] NULL,
[RCDM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCDM_ConstructionType] [int] NULL,
[RCDM_ConstructionAmt] [float] NULL,
[RCDM_Purpose] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ConstructionDrawdownMaster] ADD CONSTRAINT [PK_iO_Product_ConstructionDrawdownMaster] PRIMARY KEY CLUSTERED  ([RCDM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ConstructionDrawdownMaster', 'COLUMN', N'RCDM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ConstructionDrawdownMaster', 'COLUMN', N'RCDM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ConstructionDrawdownMaster', 'COLUMN', N'RCDM_Ownership'
GO
