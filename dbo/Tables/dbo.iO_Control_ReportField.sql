CREATE TABLE [dbo].[iO_Control_ReportField]
(
[XRRf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRf_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRf_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRf_IDLink_XRR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRf_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRf_SeqNo] [int] NULL,
[XRRf_Type] [int] NULL,
[XRRf_Class] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRf_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ReportField] ADD CONSTRAINT [PK_iO_Control_ReportField] PRIMARY KEY CLUSTERED  ([XRRf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ReportField', 'COLUMN', N'XRRf_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ReportField', 'COLUMN', N'XRRf_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ReportField', 'COLUMN', N'XRRf_Ownership'
GO
