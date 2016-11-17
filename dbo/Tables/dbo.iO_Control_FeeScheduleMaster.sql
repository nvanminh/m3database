CREATE TABLE [dbo].[iO_Control_FeeScheduleMaster]
(
[XFSCm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFSCm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCm_IDLink_XSCc] [int] NULL,
[XFSCm_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCm_IDLink_PayTo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCm_IDLink_CollectFrom] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCm_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCm_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFSCm_Type] [int] NULL,
[XFSCm_IDUser] [int] NULL,
[XFSCm_DateStart] [datetime] NULL,
[XFSCm_DateEffective] [datetime] NULL,
[XFSCm_DateEnd] [datetime] NULL,
[XFSCm_SecurityValue] [int] NULL,
[XFSCm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FeeScheduleMaster] ADD CONSTRAINT [PK_iO_Control_FeeScheduleMaster] PRIMARY KEY CLUSTERED  ([XFSCm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
