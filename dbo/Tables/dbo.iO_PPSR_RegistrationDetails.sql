CREATE TABLE [dbo].[iO_PPSR_RegistrationDetails]
(
[PPSrd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrd_IDLink_RSC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PPSrd_RegistrationStartTime] [datetime] NULL,
[PPSrd_RegistrationEndTime] [datetime] NULL,
[PPSrd_RegistrationNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrd_RegistrationToken] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrd_RegistrationChangeNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrd_RegistrationNoticeIdentifier] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrd_RegistrationKind] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrd_Subordinate] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrd_Transitional] [bit] NULL,
[PPSrd_SecuredPartyGroup] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_PPSR_RegistrationDetails] ADD CONSTRAINT [PK__iO_PPSR___EBC2F429C020C66C] PRIMARY KEY CLUSTERED  ([PPSrd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
