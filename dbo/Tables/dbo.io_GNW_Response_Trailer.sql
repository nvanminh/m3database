CREATE TABLE [dbo].[io_GNW_Response_Trailer]
(
[GNWRSPt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPt_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPt_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPt_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPt_IDLink_GNWRSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPt_IDLink_CMR] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPt_SeqNumber] [bigint] NULL,
[GNWRSPt_ReturnCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPt_MessageCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPt_MessageTextLength] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWRSPt_MessageText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
