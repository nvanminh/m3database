CREATE TABLE [dbo].[iO_System_LogDetail]
(
[SYSld_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSld_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_IDLink_SYSlm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_SeqNumber] [bigint] NULL,
[SYSld_MessageTime] [datetime] NULL,
[SYSld_MessageTypeCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_MessageTypeDesc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_MessageCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_MessageDesc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_StageCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_StageDesc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_Data0] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_Data1] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_Data2] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_Data3] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSld_Data4] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_LogDetail] ADD CONSTRAINT [PK_iO_System_LogDetail] PRIMARY KEY CLUSTERED  ([SYSld_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SC_iO_System_LogDetail_SYSld_IDLink_SYSlm] ON [dbo].[iO_System_LogDetail] ([SYSld_IDLink_SYSlm]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SC_iO_System_LogDetail_SYSld_MessageCode] ON [dbo].[iO_System_LogDetail] ([SYSld_MessageCode]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
