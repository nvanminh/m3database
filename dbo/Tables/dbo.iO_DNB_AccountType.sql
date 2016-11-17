CREATE TABLE [dbo].[iO_DNB_AccountType]
(
[DNBat_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBat_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBat_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBat_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBat_SeqNumber] [bigint] NULL,
[DNBat_Code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBat_Detail] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBat_Consumer] [bit] NULL,
[DNBat_Commercial] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_AccountType] ADD CONSTRAINT [PK_DNB_AccountType] PRIMARY KEY CLUSTERED  ([DNBat_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_DNB_Code] ON [dbo].[iO_DNB_AccountType] ([DNBat_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_DNB_CodeCommercial] ON [dbo].[iO_DNB_AccountType] ([DNBat_Code], [DNBat_Commercial]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_DNB_CodeConsumer] ON [dbo].[iO_DNB_AccountType] ([DNBat_Code], [DNBat_Consumer]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
