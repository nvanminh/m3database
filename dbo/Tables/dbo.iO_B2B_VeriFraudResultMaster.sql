CREATE TABLE [dbo].[iO_B2B_VeriFraudResultMaster]
(
[BBfm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBfm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[BBfm_IDLink_BBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_FraudFileNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_FraudDate] [datetime] NULL,
[BBfm_FraudReportingSubscriber] [varchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_FraudType] [varchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_FraudEmploymentStatus] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_FraudEmploymentEmployer] [varchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_FraudEmploymentOccupation] [varchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_FraudEmploymentCountryCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_FraudSubjectRole] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_FraudComment] [varchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IndicatorPhone1st] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IndicatorPhone2nd] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IndicatorPhoneEmployer] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IndicatorPhoneGuarantor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IndicatorPhoneReferee] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IndicatorAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IndicatorEmployer] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IndicatorDriverLicNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_IndicatorPassport] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_DetDriverLicNo] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_DetDriverLicCountryCode] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_DetPassportNo] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBfm_DetPassportCountryCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_VeriFraudResultMaster] ADD CONSTRAINT [PK_iO_B2B_VeriFraudResultMaster] PRIMARY KEY CLUSTERED  ([BBfm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriFraudResultMaster', 'COLUMN', N'BBfm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriFraudResultMaster', 'COLUMN', N'BBfm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriFraudResultMaster', 'COLUMN', N'BBfm_Ownership'
GO
