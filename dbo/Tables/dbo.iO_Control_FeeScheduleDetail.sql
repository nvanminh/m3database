CREATE TABLE [dbo].[iO_Control_FeeScheduleDetail]
(
[XFSCd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFSCd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCd_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCd_IDLink_XFSCm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCd_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCd_Type] [int] NULL,
[XFSCd_IDUser] [int] NULL,
[XFSCd_IDRow] [int] NULL,
[XFSCd_IDColumn] [int] NULL,
[XFSCd_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCd_DateTransaction] [datetime] NULL,
[XFSCd_Location] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCd_DateEffective] [datetime] NULL,
[XFSCd_DataText] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCd_DataNumber] [float] NULL,
[XFSCd_DataDate] [datetime] NULL,
[XFSCd_SecurityValue] [int] NULL,
[XFSCd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FeeScheduleDetail] ADD CONSTRAINT [PK_iO_Control_FeeScheduleDetail] PRIMARY KEY CLUSTERED  ([XFSCd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_FeeScheduleDetail] ON [dbo].[iO_Control_FeeScheduleDetail] ([XFSCd_IDLink_XFSCm]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
