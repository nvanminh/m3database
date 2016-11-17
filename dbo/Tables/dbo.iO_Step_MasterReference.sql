CREATE TABLE [dbo].[iO_Step_MasterReference]
(
[SRU_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRU_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRU_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SRU_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SRU_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SRU_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SRU_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SRU_IDLink_XRU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SRU_Type] [int] NULL,
[SRU_IDUser] [int] NULL,
[SRU_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SRU_Status] [int] NULL,
[SRU_DateEnter] [datetime] NULL,
[SRU_DateLeave] [datetime] NULL,
[SRU_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Step_MasterReference] ADD CONSTRAINT [PK_iO_Step_MasterReference] PRIMARY KEY CLUSTERED  ([SRU_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Step_MasterReference] ON [dbo].[iO_Step_MasterReference] ([SRU_IDLink_Code]) ON [PRIMARY]
GO
