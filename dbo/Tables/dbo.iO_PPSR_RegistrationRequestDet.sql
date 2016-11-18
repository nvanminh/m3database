CREATE TABLE [dbo].[iO_PPSR_RegistrationRequestDet]
(
[PPSrr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrr_IDLink_RSC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PPSrr_SecuredPartyGroup] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrr_RegistrationType] [int] NULL,
[PPSrr_DurationOption] [int] NULL,
[PPSrr_EndTime] [datetime] NULL,
[PPSrr_NotificationIdentifier] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrr_SearchByOption] [int] NULL,
[PPSrr_RegisterByOption] [int] NULL,
[PPSrr_AmendDurationOption] [int] NULL,
[PPSrr_AmendEndTime] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_PPSR_RegistrationRequestDet] ADD CONSTRAINT [PK__iO_PPSR___D13061150C17A520] PRIMARY KEY CLUSTERED  ([PPSrr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
