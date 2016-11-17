CREATE TABLE [dbo].[iO_FCX_LoanApplication]
(
[FCXl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXl_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXl_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXl_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXl_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_FCX_LoanApplication] ADD CONSTRAINT [PK_FCXl_ID] PRIMARY KEY CLUSTERED  ([FCXl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
