CREATE TABLE [dbo].[iO_Product_ProjectMaster]
(
[RPPr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPPr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPPr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPPr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPPr_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPPr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RPPr_Alias] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPPr_DateStarted] [datetime] NULL,
[RPPr_DateDue] [datetime] NULL,
[RPPr_DateComplete] [datetime] NULL,
[RPPr_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPPr_PercentComplete] [float] NULL,
[RPPr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPPr_Name] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPPr_ChargeType] [int] NULL,
[RPPr_ChargeRateDaily] [float] NULL,
[RPPr_ChargeRateUnit] [float] NULL,
[RPPr_FixedChargeAmount] [float] NULL,
[RPPr_DefaultTMCharge] [float] NULL,
[RPPr_EstimatedProjectUnits] [int] NULL,
[RPPr_Priority] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ProjectMaster] ADD CONSTRAINT [PK_iO_Product_ProjectMaster] PRIMARY KEY CLUSTERED  ([RPPr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ProjectMaster] ON [dbo].[iO_Product_ProjectMaster] ([RPPr_SeqNumber]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ProjectMaster', 'COLUMN', N'RPPr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ProjectMaster', 'COLUMN', N'RPPr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ProjectMaster', 'COLUMN', N'RPPr_Ownership'
GO
