CREATE TABLE [dbo].[iO_Control_LinkMaster]
(
[XLK_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XLK_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XLK_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_IDLink_XLKc] [int] NULL,
[XLK_IDLink_XSCc] [int] NULL,
[XLK_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_IDLink_Second] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_Type] [int] NULL,
[XLK_IDUser] [int] NULL,
[XLK_IDARMclassic] [int] NULL,
[XLK_SecurityValue] [int] NULL,
[XLK_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_B2BKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_Image] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_Filter_Category] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_MoreThanOneActive] [bit] NULL,
[XLK_CanDelete] [bit] NULL,
[XLK_IDLink_NMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_AlternateDetail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLK_FeeCollect] [bit] NULL,
[XLK_FeePay] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_LinkMaster] ADD CONSTRAINT [PK_iO_Control_ClientRelationshipType] PRIMARY KEY CLUSTERED  ([XLK_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_LinkMaster_9_1548584605__K1_K10_13] ON [dbo].[iO_Control_LinkMaster] ([XLK_ID], [XLK_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_LinkMaster_9_1548584605__K10] ON [dbo].[iO_Control_LinkMaster] ([XLK_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_LinkMaster_8_1548584605__K10_K1_13] ON [dbo].[iO_Control_LinkMaster] ([XLK_IDUser], [XLK_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_LinkMaster_9_1548584605__K10_K1] ON [dbo].[iO_Control_LinkMaster] ([XLK_IDUser], [XLK_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LinkMaster', 'COLUMN', N'XLK_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LinkMaster', 'COLUMN', N'XLK_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LinkMaster', 'COLUMN', N'XLK_Ownership'
GO
