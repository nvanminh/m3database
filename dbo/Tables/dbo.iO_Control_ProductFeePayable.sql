CREATE TABLE [dbo].[iO_Control_ProductFeePayable]
(
[XRFP_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRFP_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFP_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFP_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFP_IDLink_XSCc] [int] NULL,
[XRFP_IDLink_Code] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFP_Type] [int] NULL,
[XRFP_IDUser] [int] NULL,
[XRFP_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFP_SecurityValue] [int] NULL,
[XRFP_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductFeePayable] ADD CONSTRAINT [PK_io_Control_ProductFeePayable] PRIMARY KEY CLUSTERED  ([XRFP_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductFeePayable', 'COLUMN', N'XRFP_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductFeePayable', 'COLUMN', N'XRFP_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductFeePayable', 'COLUMN', N'XRFP_Ownership'
GO
