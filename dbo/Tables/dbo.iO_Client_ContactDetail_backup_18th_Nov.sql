CREATE TABLE [dbo].[iO_Client_ContactDetail_backup_18th_Nov]
(
[CCD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_IDLink_XCT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[CCD_Details] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_IDUser] [int] NULL,
[CCD_Type] [int] NULL,
[CCD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_AreaCode] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_PreferredContactType] [int] NULL,
[CCD_ISD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_Extension] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
