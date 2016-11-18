CREATE TABLE [dbo].[iO_PPSR_RegistrationTransactions]
(
[PPSrt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrt_IDLink_RSC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrt_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PPSrt_ProcessTime] [datetime] NULL,
[PPSrt_RegistrationNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrt_ChangeNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrt_Transaction] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrt_ChangeTime] [datetime] NULL,
[PPSrt_TransactionReference] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrt_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_PPSR_RegistrationTransactions] ADD CONSTRAINT [PK__iO_PPSR___4F215DD61AD3A9A3] PRIMARY KEY CLUSTERED  ([PPSrt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
