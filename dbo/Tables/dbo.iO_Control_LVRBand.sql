CREATE TABLE [dbo].[iO_Control_LVRBand]
(
[XLVRb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XLVRb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLVRb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLVRb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLVRb_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLVRb_Type] [int] NULL,
[XLVRb_IDUser] [int] NULL,
[XLVRb_Value] [float] NULL,
[XLVRb_SecurityValue] [int] NULL,
[XLVRb_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_LVRBand] ADD CONSTRAINT [PK_iO_Control_LVRBand] PRIMARY KEY CLUSTERED  ([XLVRb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LVRBand', 'COLUMN', N'XLVRb_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LVRBand', 'COLUMN', N'XLVRb_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LVRBand', 'COLUMN', N'XLVRb_Ownership'
GO
