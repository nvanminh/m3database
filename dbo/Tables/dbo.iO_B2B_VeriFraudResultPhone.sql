CREATE TABLE [dbo].[iO_B2B_VeriFraudResultPhone]
(
[BBfp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBfp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[BBfp_IDLink_BBfm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfp_Type] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfp_CountryCode] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfp_AreaCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfp_Number] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_VeriFraudResultPhone] ADD CONSTRAINT [PK_iO_B2B_VeriFraudResultPhone] PRIMARY KEY CLUSTERED  ([BBfp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriFraudResultPhone', 'COLUMN', N'BBfp_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriFraudResultPhone', 'COLUMN', N'BBfp_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriFraudResultPhone', 'COLUMN', N'BBfp_Ownership'
GO
