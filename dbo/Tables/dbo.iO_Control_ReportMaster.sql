CREATE TABLE [dbo].[iO_Control_ReportMaster]
(
[XRR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_IDLink_XSCc] [int] NULL,
[XRR_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_IDLink_SQLSelect] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_Type] [int] NULL,
[XRR_IDUser] [int] NULL,
[XRR_IDQueue] [int] NULL,
[XRR_Extension] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_UNCPath] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_SecurityValue] [int] NULL,
[XRR_XMLOptions] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_Base64Data] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRR_SpecialReportType] [int] NULL,
[XRR_UseGraphs] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ReportMaster] ADD CONSTRAINT [PK_iO_Control_ReportMaster] PRIMARY KEY CLUSTERED  ([XRR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ReportMaster] ON [dbo].[iO_Control_ReportMaster] ([XRR_Detail]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ReportMaster_1] ON [dbo].[iO_Control_ReportMaster] ([XRR_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ReportMaster', 'COLUMN', N'XRR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ReportMaster', 'COLUMN', N'XRR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ReportMaster', 'COLUMN', N'XRR_Ownership'
GO
