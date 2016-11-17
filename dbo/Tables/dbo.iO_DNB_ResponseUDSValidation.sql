CREATE TABLE [dbo].[iO_DNB_ResponseUDSValidation]
(
[DNBuds_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBuds_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBuds_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBuds_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBuds_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBuds_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBuds_SeqNumber] [bigint] NULL,
[DNBuds_StatusCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBuds_StatusMessage] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBuds_SafeHarbourFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBuds_DOBTxn] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBuds_PrimarySource] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseUDSValidation] ADD CONSTRAINT [PK_iO_DNB_ResponseUDSValidation] PRIMARY KEY CLUSTERED  ([DNBuds_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
