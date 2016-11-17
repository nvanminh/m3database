CREATE TABLE [dbo].[iO_Control_ProductPropertyRefinancePurpose]
(
[XRTp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTp_IDLink_XSCc] [int] NULL,
[XRTp_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTp_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTp_Type] [int] NULL,
[XRTp_IDUser] [int] NULL,
[XRTp_SecurityValue] [int] NULL,
[XRTp_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTp_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTp_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyRefinancePurpose] ADD CONSTRAINT [PK_iO_Control_ProductPropertyRefinancePurpose] PRIMARY KEY CLUSTERED  ([XRTp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyRefinancePurpose', 'COLUMN', N'XRTp_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyRefinancePurpose', 'COLUMN', N'XRTp_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyRefinancePurpose', 'COLUMN', N'XRTp_Ownership'
GO
