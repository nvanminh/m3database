CREATE TABLE [dbo].[iO_System_ValidationResult]
(
[SYSvr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSvr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSvr_Type] [int] NULL,
[SYSvr_IDUser] [int] NULL,
[SYSvr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_IDLink_SYSvs] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_IDLink_SYSvt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_ObjectType] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_IDLink_Object] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_Field] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_Severity] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_Description] [varchar] (4096) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvr_Source] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_ValidationResult] ADD CONSTRAINT [PK__iO_Syste__8E5D5A477BEBEAE9] PRIMARY KEY CLUSTERED  ([SYSvr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
