CREATE TABLE [dbo].[iO_Control_ServiceCallMaster]
(
[XSCM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSCM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_IDLink_XSCc] [int] NULL,
[XSCM_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_Type] [int] NULL,
[XSCM_IDUser] [int] NULL,
[XSCM_SecurityValue] [int] NULL,
[XSCM_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_RequestXMLTemplate] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_ResponseXMLTemplate] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_ContentType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_Method] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_UserAgent] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_URI] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_Auth] [bit] NULL,
[XSCM_AuthUser] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_AuthPass] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_Culture] [int] NULL,
[XSCM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_ApplyTransformation] [bit] NULL,
[XSCM_TransformFileName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCM_TransformFile_Client] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ServiceCallMaster] ADD CONSTRAINT [PK_iO_Control_ServiceCallMaster] PRIMARY KEY CLUSTERED  ([XSCM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
