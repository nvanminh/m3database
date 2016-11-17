CREATE TABLE [dbo].[iO_Client_AddressVerificationBoarding]
(
[CAVb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAVb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAVb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVb_IDLink_CAD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVb_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CAVb_ConfirmResidency] [int] NULL,
[CAVb_AddressConfirmed] [int] NULL,
[CAVb_LengthLivedAtProperty] [int] NULL,
[CAVb_AgreementInPlace] [int] NULL,
[CAVb_RentalAmount] [float] NULL,
[CAVb_IDLink_XFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVb_PaymentUpToDate] [int] NULL,
[CAVb_OutstandingAmount] [float] NULL,
[CAVb_ReasonToDiscontinue] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVb_HowLongLivingThere] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVb_PersonsName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVb_HowDoYouKnowApplicant] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVb_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVb_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_AddressVerificationBoarding] ADD CONSTRAINT [PK_iO_Client_AddressVerificationBoarding] PRIMARY KEY CLUSTERED  ([CAVb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressVerificationBoarding', 'COLUMN', N'CAVb_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressVerificationBoarding', 'COLUMN', N'CAVb_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressVerificationBoarding', 'COLUMN', N'CAVb_Ownership'
GO
