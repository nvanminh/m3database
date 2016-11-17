CREATE TABLE [dbo].[iO_Service_CallMessages]
(
[SCE_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCE_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCE_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCE_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCE_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCE_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SCE_MessageTime] [datetime] NULL,
[SCE_MessageTypeCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCE_MessageTypeDesc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCE_MessageCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCE_MessageDesc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCE_StageCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCE_StageDesc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Service_CallMessages] ADD CONSTRAINT [PK_iO_Service_CallMessages] PRIMARY KEY CLUSTERED  ([SCE_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
