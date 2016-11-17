CREATE TABLE [dbo].[iO_Control_VersionTag]
(
[XVMtag_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XVMtag_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVMtag_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVMtag_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVMtag_IDLink_XVM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVMtag_IDLink_Object] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVMtag_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVMtag_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVMtag_Type] [int] NULL,
[XVMtag_IDUser] [int] NULL,
[XVMtag_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVMtag_IDLink_XSCc] [int] NULL,
[XVMtag_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVMtag_SecurityValue] [int] NULL,
[XVMtag_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_VersionTag] ADD CONSTRAINT [PK_iO_Control_VersionTag] PRIMARY KEY CLUSTERED  ([XVMtag_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
