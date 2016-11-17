CREATE TABLE [dbo].[iO_FCX_ApplicantGroup_CreditBureau]
(
[FCXaac_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXaap_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_IDLink_FCXaa] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXaac_CBAuthorizeDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_CBAuthorizationMethod] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_CreditBureauName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_CreditBureauReportType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_CreditBureauSummary] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_CreditReport_CreditReportFixedFormat] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_CreditReport_CreditReportText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_CreditReport_CreditReportXMLFormat] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_DatePulled] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaac_Language] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
