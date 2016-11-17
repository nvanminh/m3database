CREATE TABLE [dbo].[iO_Control_FeeScheduleClassification]
(
[XFSCc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFSCc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCc_IDLink_XFSCm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCc_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCc_Type] [int] NULL,
[XFSCc_IDUser] [int] NULL,
[XFSCc_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCc_SecurityValue] [int] NULL,
[XFSCc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FeeScheduleClassification] ADD CONSTRAINT [PK_iO_Control_FeeScheduleClassification] PRIMARY KEY CLUSTERED  ([XFSCc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_FeeScheduleClassification] ON [dbo].[iO_Control_FeeScheduleClassification] ([XFSCc_IDLink_XFSCm]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
