CREATE TABLE [dbo].[iO_Client_CompanyOwnership]
(
[COWn_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COWn_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COWn_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COWn_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COWn_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COWn_IDLink_Company] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COWn_Percent] [float] NULL,
[COWn_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COWn_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[COWn_Type] [int] NULL,
[COWn_IDUser] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CompanyOwnership] ADD CONSTRAINT [PK_iO_Client_IndividualOwnership] PRIMARY KEY CLUSTERED  ([COWn_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_CompanyOwnership] ON [dbo].[iO_Client_CompanyOwnership] ([COWn_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CompanyOwnership', 'COLUMN', N'COWn_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CompanyOwnership', 'COLUMN', N'COWn_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CompanyOwnership', 'COLUMN', N'COWn_Ownership'
GO
