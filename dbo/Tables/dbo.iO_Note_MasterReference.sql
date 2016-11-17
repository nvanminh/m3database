CREATE TABLE [dbo].[iO_Note_MasterReference]
(
[NMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_XSC_cls] [int] NULL,
[NMR_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_Code_Parent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_CMR_For] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_CMR_From] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_XNT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_Group] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_KMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_Aggregator] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_Broker] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_XCT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[NMR_Type] [int] NULL,
[NMR_IDUser] [int] NULL,
[NMR_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_Category] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_Reason] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_Date] [datetime] NULL,
[NMR_RevisedResDate] [datetime] NULL,
[NMR_CntctBrkrOnRs] [bit] NULL,
[NMR_Resolved] [bit] NULL,
[NMR_BrkrCntctdOnRs] [bit] NULL,
[NMR_DelegationLevel] [int] NULL,
[NMR_OverrideDelegationLevel] [int] NULL,
[NMR_Resolution] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_ActionsTaken] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_ActionsRequired] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NMR_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Note_MasterReference] ADD CONSTRAINT [PK_iO_Note_MasterReference] PRIMARY KEY CLUSTERED  ([NMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-111823_CMR_FOR] ON [dbo].[iO_Note_MasterReference] ([NMR_IDLink_CMR_For]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-111759_IDLINK_CODE] ON [dbo].[iO_Note_MasterReference] ([NMR_IDLink_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Note_MasterReference_1] ON [dbo].[iO_Note_MasterReference] ([NMR_IDLink_XNT]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Note_MasterReference_10] ON [dbo].[iO_Note_MasterReference] ([NMR_IDLink_XNT], [NMR_IDLink_Code], [NMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Note_MasterReference', 'COLUMN', N'NMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Note_MasterReference', 'COLUMN', N'NMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Note_MasterReference', 'COLUMN', N'NMR_Ownership'
GO
