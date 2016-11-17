CREATE TABLE [dbo].[iO_Control_FieldMaster]
(
[XFDM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFDM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFDM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_IDLink_XSCc] [int] NULL,
[XFDM_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_IDLink_AuditNote] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_IDLink_FieldDefault] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_IDLink_ErrorNote] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_IDLink_HelpNote] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_Class] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_IDUser] [int] NULL,
[XFDM_Type] [int] NULL,
[XFDM_IDARMclassic] [int] NULL,
[XFDM_DataShareType] [int] NULL,
[XFDM_DataShareName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_SQLString] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_SQLUpdate] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_SQLSearch] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_FieldFormatType] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_FieldFormatString] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_SearchName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_SearchKey] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_ARMClassic] [bit] NULL,
[XFDM_AuditStart] [bit] NULL,
[XFDM_AuditDataShare] [int] NULL,
[XFDM_AuditString] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_Required] [bit] NULL,
[XFDM_IsMasterAllocationQuery] [bit] NULL,
[XFDM_IsCriteriaQuery] [bit] NULL,
[XFDM_DisplayName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_WatermarkMessage] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_HelpPage] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_SecurityValue] [int] NULL,
[XFDM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_WebFieldMode] [int] NULL,
[XFDM_WebFieldName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_WebFieldResultSetNames] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_WebFieldPublicFlag] [bit] NULL,
[XFDM_WebFieldInputParameterNames] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_WebFieldInputTables] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_WebFieldBeforeWorkflowFlag] [bit] NULL,
[XFDM_WebFieldAfterWorkflowFlag] [bit] NULL,
[XFDM_CustomFormatStringOptions] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFDM_IDFriendly] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FieldMaster] ADD CONSTRAINT [PK_iO_Control_FieldMaster] PRIMARY KEY CLUSTERED  ([XFDM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_FieldMaster_83_478676803__K11_1_12] ON [dbo].[iO_Control_FieldMaster] ([XFDM_Class]) INCLUDE ([XFDM_ID], [XFDM_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_FieldMaster] ON [dbo].[iO_Control_FieldMaster] ([XFDM_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_FieldMaster_10] ON [dbo].[iO_Control_FieldMaster] ([XFDM_SearchName]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FieldMaster', 'COLUMN', N'XFDM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FieldMaster', 'COLUMN', N'XFDM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FieldMaster', 'COLUMN', N'XFDM_Ownership'
GO
