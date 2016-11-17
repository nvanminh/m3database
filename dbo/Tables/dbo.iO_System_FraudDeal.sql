CREATE TABLE [dbo].[iO_System_FraudDeal]
(
[SYSfd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSfd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_IDLink_SYSfm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_SeqNumber] [bigint] NULL,
[SYSfd_DealNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_BrokerName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_BrokerFirm] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_QACode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfd_AdditionalInfo] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_FraudDeal] ADD CONSTRAINT [PK_iO_System_FraudDeal] PRIMARY KEY CLUSTERED  ([SYSfd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
