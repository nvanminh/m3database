CREATE TABLE [dbo].[iO_Control_TransactionMaster]
(
[XTRM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_XSCc] [int] NULL,
[XTRM_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Reverse] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Dishonor] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_XTRC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_GLSplit] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Key01] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Key02] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Key03] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Key04] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Key05] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Sign] [int] NULL,
[XTRM_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_Type] [int] NULL,
[XTRM_IDUser] [int] NULL,
[XTRM_IDARMclassic] [int] NULL,
[XTRM_DisplayOrder] [int] NULL,
[XTRM_SecurityValue] [int] NULL,
[XTRM_IDText] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_FieldAmount] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_MinAmount] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_MaxAmount] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_SetGhost] [bit] NULL,
[XTRM_SetDirectCredit] [bit] NULL,
[XTRM_SetDirectDebit] [bit] NULL,
[XTRM_SetPrintCheque] [bit] NULL,
[XTRM_SetExportToGL] [bit] NULL,
[XTRM_SetStatement] [bit] NULL,
[XTRM_SetNextDay] [bit] NULL,
[XTRM_Visible] [bit] NULL,
[XTRM_WaitAccuredRecord] [bit] NULL,
[XTRM_Color] [int] NULL,
[XTRM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_UseProductWaterFall] [bit] NULL,
[XTRM_IDLink_XWFEm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_EFT_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_EFT_XSYSct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_GLDefaultCRAccount] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_GLDefaultDBAccount] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Collect] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRM_IDLink_Pay] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TransactionMaster] ADD CONSTRAINT [PK_iO_Control_TransactionMater] PRIMARY KEY CLUSTERED  ([XTRM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_TransactionMaster] ON [dbo].[iO_Control_TransactionMaster] ([XTRM_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionMaster', 'COLUMN', N'XTRM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionMaster', 'COLUMN', N'XTRM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionMaster', 'COLUMN', N'XTRM_Ownership'
GO
