CREATE TABLE [dbo].[iO_Client_AddressVerificationRental]
(
[CAVr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAVr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAVr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVr_IDLink_CAD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CAVr_RegisteredAgreement] [int] NULL,
[CAVr_CoTenants] [int] NULL,
[CAVr_CoTenantNumber] [int] NULL,
[CAVr_LeaseStartDate] [smalldatetime] NULL,
[CAVr_LeaseTerms] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVr_ReasonToDiscontinueLease] [int] NULL,
[CAVr_RentalAmount] [float] NULL,
[CAVr_IDLink_XFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVr_RentUpToDate] [int] NULL,
[CAVr_OutstandingAmount] [float] NULL,
[CAVr_ResponsibleTenant] [int] NULL,
[CAVr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVr_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_AddressVerificationRental] ADD CONSTRAINT [PK_iO_Client_AddressVerificationRental] PRIMARY KEY CLUSTERED  ([CAVr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressVerificationRental', 'COLUMN', N'CAVr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressVerificationRental', 'COLUMN', N'CAVr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressVerificationRental', 'COLUMN', N'CAVr_Ownership'
GO
