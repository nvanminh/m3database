CREATE TABLE [dbo].[iO_Control_ProductField]
(
[XRFdm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRFdm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFdm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFdm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFdm_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFdm_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFdm_Type] [int] NULL,
[XRFdm_IDUser] [int] NULL,
[XRFdm_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFdm_SecurityValue] [int] NULL,
[XRFdm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductField] ADD CONSTRAINT [PK_iO_Control_ProductField] PRIMARY KEY CLUSTERED  ([XRFdm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductField', 'COLUMN', N'XRFdm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductField', 'COLUMN', N'XRFdm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductField', 'COLUMN', N'XRFdm_Ownership'
GO
