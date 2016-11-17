CREATE TABLE [dbo].[iO_B2B_VeriFraudResultAddress]
(
[BBfa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBfa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[BBfa_IDLink_BBfm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_UnitNo] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_StreetNo] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_Property] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_StreetName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_StreetTypeCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_Suburb] [varchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_State] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_City] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_CountryCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfa_PostCode] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_VeriFraudResultAddress] ADD CONSTRAINT [PK_iO_B2B_VeriFraudResultAddress] PRIMARY KEY CLUSTERED  ([BBfa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriFraudResultAddress', 'COLUMN', N'BBfa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriFraudResultAddress', 'COLUMN', N'BBfa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriFraudResultAddress', 'COLUMN', N'BBfa_Ownership'
GO
