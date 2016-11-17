CREATE TABLE [dbo].[iO_Control_ProductRateSegment]
(
[XRRs_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRs_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRs_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRs_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRs_IDLink_XSCc] [int] NULL,
[XRRs_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRs_Type] [int] NULL,
[XRRs_IDUser] [int] NULL,
[XRRs_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRs_SecurityValue] [int] NULL,
[XRRs_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRs_IDARMclassic] [int] NULL,
[XRRs_Tiered] [bit] NULL,
[XRRs_Banded] [bit] NULL,
[XRRs_AddBase] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductRateSegment] ADD CONSTRAINT [PK_iO_Control_ProductRateSegment] PRIMARY KEY CLUSTERED  ([XRRs_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductRateSegment_9_1157631217__K8_9] ON [dbo].[iO_Control_ProductRateSegment] ([XRRs_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateSegment', 'COLUMN', N'XRRs_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateSegment', 'COLUMN', N'XRRs_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateSegment', 'COLUMN', N'XRRs_Ownership'
GO
