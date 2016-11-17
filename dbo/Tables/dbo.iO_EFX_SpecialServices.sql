CREATE TABLE [dbo].[iO_EFX_SpecialServices]
(
[EFXSS_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_Type] [int] NULL,
[EFXSS_IDUser] [int] NULL,
[EFXSS_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXSS_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_SpecialService_code] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_SpecialService_description] [varchar] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_DateReported] [int] NULL,
[EFXSS_CustomerNumber] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_Name] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_ParsedTelephone_AreaCode] [int] NULL,
[EFXSS_ParsedTelephone_Number] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSS_ParsedTelephone_Extension] [int] NULL,
[EFXSS_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
