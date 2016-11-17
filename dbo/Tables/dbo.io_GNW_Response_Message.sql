CREATE TABLE [dbo].[io_GNW_Response_Message]
(
[GNWRSPm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPm_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPm_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPm_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPm_IDLink_GNWRSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPm_IDLink_CMR] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPm_SeqNumber] [bigint] NULL,
[GNWRSPm_MessageTableCode] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPm_MessageTableText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
