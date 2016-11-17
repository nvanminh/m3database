CREATE TABLE [dbo].[iO_Client_CreditBureau]
(
[CCB_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCB_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_IDLink_Version] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_IDLink_CMR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_IDLink_Code] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_SeqNumber] [bigint] NULL,
[CCB_CreditScore] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_cbAuthorizationDate] [datetime] NULL,
[CCB_cbAuthorizationMethod] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_CreditBureauName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_CreditBureauReportType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_CreditBureauSummary] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_CreditBureauReport_Fixed] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_CreditBureauReport_Text] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_CreditBureauReport_XML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_DatePulled] [datetime] NULL,
[CCB_Language] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_CreditScore_Original] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCB_CreditScore_Refreshed] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CreditBureau] ADD CONSTRAINT [PK_iO_Client_CreditBureau] PRIMARY KEY CLUSTERED  ([CCB_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_CreditBureau_10] ON [dbo].[iO_Client_CreditBureau] ([CCB_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
