CREATE TABLE [dbo].[iO_Task_MasterReference]
(
[KMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_CMR_CreatedBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_CMR_CompletedBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_RMR_Parent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_XTKM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_XSCc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_NMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_CBD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_RPPR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_Priority] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_KPD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_Inter] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[KMR_IDUser] [int] NULL,
[KMR_Type] [int] NULL,
[KMR_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_Priority] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_ProductType] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_Classification] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_Module] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_Serverity] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_Date] [datetime] NULL,
[KMR_DateDue] [datetime] NULL,
[KMR_DateStart] [datetime] NULL,
[KMR_DateEnd] [datetime] NULL,
[KMR_PercentComplete] [float] NULL,
[KMR_TimeRequiredInHours] [int] NULL,
[KMR_TimeEstimatedToComplete] [int] NULL,
[KMR_Invoiced] [bit] NULL,
[KMR_ChargeAmount] [float] NULL,
[KMR_PaymentMethod] [float] NULL,
[KMR_ObjectType] [int] NULL,
[KMR_ObjectSeq] [int] NULL,
[KMR_Required] [bit] NULL,
[KMR_DelegationLevel] [int] NULL,
[KMR_OverrideDelegationLevel] [int] NULL,
[KMR_SecurityValue] [int] NULL,
[KMR_Problem_Details] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_Resolution] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_Release] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_IDLink_DMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMR_EstimatedUnits] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Task_MasterReference] ADD CONSTRAINT [PK_iO_Task_MasterReference] PRIMARY KEY CLUSTERED  ([KMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-181919_KMR_Date] ON [dbo].[iO_Task_MasterReference] ([KMR_Date]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-182015_DateStart] ON [dbo].[iO_Task_MasterReference] ([KMR_DateStart]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Task_MasterReference_1] ON [dbo].[iO_Task_MasterReference] ([KMR_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Task_MasterReference_2] ON [dbo].[iO_Task_MasterReference] ([KMR_IDLink_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Task_MasterReference] ON [dbo].[iO_Task_MasterReference] ([KMR_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-181822_XSU] ON [dbo].[iO_Task_MasterReference] ([KMR_IDLink_XSU]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-181756_XTKM] ON [dbo].[iO_Task_MasterReference] ([KMR_IDLink_XTKM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_MasterReference', 'COLUMN', N'KMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_MasterReference', 'COLUMN', N'KMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_MasterReference', 'COLUMN', N'KMR_Ownership'
GO
