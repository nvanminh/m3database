CREATE TABLE [dbo].[iO_Client_AddressVerificationMortgage]
(
[CAVm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAVm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAVm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVm_IDLink_CAD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CAVm_Financier] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVm_SixMonthsStatements] [int] NULL,
[CAVm_PaymentsUpToDate] [int] NULL,
[CAVm_RecentRatesNotice] [int] NULL,
[CAVm_RatesArrears] [int] NULL,
[CAVm_LengthLivedAtProperty] [int] NULL,
[CAVm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVm_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_AddressVerificationMortgage] ADD CONSTRAINT [PK_iO_Client_AddressVerificationMortgage] PRIMARY KEY CLUSTERED  ([CAVm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressVerificationMortgage', 'COLUMN', N'CAVm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressVerificationMortgage', 'COLUMN', N'CAVm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressVerificationMortgage', 'COLUMN', N'CAVm_Ownership'
GO
