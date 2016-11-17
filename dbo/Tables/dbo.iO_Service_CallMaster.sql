CREATE TABLE [dbo].[iO_Service_CallMaster]
(
[SCM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_IDLink_XSCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_IDLink_Key1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_IDLink_Key2] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_IDLink_SCM_PreviousAttempt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SCM_RequestTime] [datetime] NULL,
[SCM_RequestURI] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_RequestUser] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_RequestPass] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_RequestContentType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_RequestUserAgent] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_RequestMethod] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_DataShareState] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_RequestXMLTemplate] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_RequestXMLMerged] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_ResponseXMLTemplate] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_ResponseXMLData] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_ResponseXMLPayload] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCM_Culture] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Service_CallMaster] ADD CONSTRAINT [PK_iO_Service_CallMaster] PRIMARY KEY CLUSTERED  ([SCM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
