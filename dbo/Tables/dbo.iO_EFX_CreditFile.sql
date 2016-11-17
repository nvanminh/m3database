CREATE TABLE [dbo].[iO_EFX_CreditFile]
(
[EFXCF_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_Type] [int] NULL,
[EFXCF_IDUser] [int] NULL,
[EFXCF_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXCF_UniqueNumber] [int] NULL,
[EFXCF_FileSinceDate] [int] NULL,
[EFXCF_DateOfLastActivity] [int] NULL,
[EFXCF_DateOfRequest] [int] NULL,
[EFXCF_TotalNumberOfInquiries] [int] NULL,
[EFXCF_BureauCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_BureauContactInformation] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_HitCode_code] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_HitCode_description] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_HitStrengthIndicator_code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_HitStrengthIndicator_description] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_DataWarningMessage_code] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_DataWarningMessage_description] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_CardAlertWarningMessage_code] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_CardAlertWarningMessage_description] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCF_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_EFX_CreditFile_9_210151844__K9_K10_K8_1_12_14] ON [dbo].[iO_EFX_CreditFile] ([EFXCF_IDLink_CMR], [EFXCF_SeqNumber], [EFXCF_IDLink_EFXRQ]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_EFX_CreditFile_9_210151844__K10_K9_K8_1_12_14] ON [dbo].[iO_EFX_CreditFile] ([EFXCF_SeqNumber], [EFXCF_IDLink_CMR], [EFXCF_IDLink_EFXRQ]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
