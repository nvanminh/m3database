CREATE TABLE [dbo].[iO_B2B_VeriChkResultPhoneListing]
(
[BBvp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBvp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[BBvp_IDLink_BBvm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_Type] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_MatchSummary] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_PhoneMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_NameInitialsMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_NameFamilyMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_AddrType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_AddrMatchSummary] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_AddrUnitNumMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_AddrStreetNumMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_AddrPropertyNameMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_AddrStreetNameMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_AddrStreetTypeMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_AddrSuburbMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_AddrStateMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvp_AddrPostCodeMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_VeriChkResultPhoneListing] ADD CONSTRAINT [PK_iO_B2B_VeriChkResultPhoneListing] PRIMARY KEY CLUSTERED  ([BBvp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultPhoneListing', 'COLUMN', N'BBvp_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultPhoneListing', 'COLUMN', N'BBvp_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultPhoneListing', 'COLUMN', N'BBvp_Ownership'
GO
