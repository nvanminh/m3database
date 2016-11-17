CREATE TABLE [dbo].[iO_B2B_ClientIndividual]
(
[BBci_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBci_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBci_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBci_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBci_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBci_Surname] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBci_FirstName] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBci_MiddleNames] [varchar] (164) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBci_FileCreateDate] [datetime] NULL,
[BBci_DriversLicenceNo] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBci_DriversLicenceCountryCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBci_GenderType] [int] NULL,
[BBci_DOB] [datetime] NULL,
[BBci_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_ClientIndividual] ADD CONSTRAINT [PK_iO_B2B_ClientIndividual] PRIMARY KEY CLUSTERED  ([BBci_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientIndividual', 'COLUMN', N'BBci_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientIndividual', 'COLUMN', N'BBci_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientIndividual', 'COLUMN', N'BBci_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientIndividual', 'COLUMN', N'BBci_Ownership'
GO
