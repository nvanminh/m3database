CREATE TABLE [dbo].[iO_PPSR_Encumbrance]
(
[PPSe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSe_IDLink_PPSm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSe_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PPSe_RegisteredWith] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSe_RegistrationStartTime] [datetime] NULL,
[PPSe_RegistrationEndTime] [datetime] NULL,
[PPSe_RegistrationKind] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_PPSR_Encumbrance] ADD CONSTRAINT [PK__iO_PPSR___64BA51D1858BB4AB] PRIMARY KEY CLUSTERED  ([PPSe_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
