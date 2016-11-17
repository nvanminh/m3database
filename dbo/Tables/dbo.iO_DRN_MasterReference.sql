CREATE TABLE [dbo].[iO_DRN_MasterReference]
(
[DRN_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DRN_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRN_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRN_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRN_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRN_SeqNumber] [bigint] NULL,
[DRN_IDUser] [int] NULL,
[DRN_Type] [int] NULL,
[DRN_ImportOrExport] [int] NULL,
[DRN_ExportDate] [datetime] NULL,
[DRN_QueueDate] [datetime] NULL,
[DRN_AddedBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DRN_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DRN_MasterReference] ADD CONSTRAINT [PK_iO_DRN_MasterReference] PRIMARY KEY CLUSTERED  ([DRN_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
