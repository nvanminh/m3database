CREATE TABLE [dbo].[iO_Control_ClassProduct]
(
[XRM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_IDLink_EODSQL] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_IDLink_Primary] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_IDLink_Secondary] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_IDLink_Client] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_IDLink_Note] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_IDLink_Process] [int] NULL,
[XRM_Type] [int] NULL,
[XRM_IDUser] [int] NULL,
[XRM_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_AlternateDetail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_B2PKeyword] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_ControlBar_Name] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_ControlBar_Add] [int] NULL,
[XRM_CheckAccount] [bit] NULL,
[XRM_SecurityValue] [int] NULL,
[XRM_Image] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRM_CalculateDailyInterest] [bit] NULL,
[XRM_PendingTaskOnly] [bit] NULL,
[XRM_ImageFileName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClassProduct] ADD CONSTRAINT [PK_iO_Control_ProductTypeMaster] PRIMARY KEY CLUSTERED  ([XRM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassProduct', 'COLUMN', N'XRM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassProduct', 'COLUMN', N'XRM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassProduct', 'COLUMN', N'XRM_Ownership'
GO
