CREATE TABLE [dbo].[iO_B2B_VeriChkResultElectoralRoll]
(
[BBve_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBve_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[BBve_IDLink_BBvm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_Type] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_MatchSummary] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_AddrType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_AddrMatchSummary] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_AddrUnitNumMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_AddrStreetNumMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_AddrPropertyNameMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_AddrStreetNameMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_AddrStreetTypeMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_AddrSuburbMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_AddrStateMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_AddrPostCodeMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_NameMatchSummary] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_NameFirstMatchInitial] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_NameFirstMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_NameOtherMatchInitial] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_NameOtherMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBve_NameFamilyMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_VeriChkResultElectoralRoll] ADD CONSTRAINT [PK_iO_B2B_VeriChkResultElectoralRoll] PRIMARY KEY CLUSTERED  ([BBve_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultElectoralRoll', 'COLUMN', N'BBve_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultElectoralRoll', 'COLUMN', N'BBve_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultElectoralRoll', 'COLUMN', N'BBve_Ownership'
GO
