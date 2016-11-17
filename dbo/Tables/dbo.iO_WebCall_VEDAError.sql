CREATE TABLE [dbo].[iO_WebCall_VEDAError]
(
[WCVe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WCVe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVe_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVe_IDLink_TFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVe_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[WCVe_FaultCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVe_FaultString] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVe_FaultActor] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVe_FaultDetail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVe_DateOfError] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_WebCall_VEDAError] ADD CONSTRAINT [PK_iO_WebCall_VEDAResponseError] PRIMARY KEY CLUSTERED  ([WCVe_ID]) ON [PRIMARY]
GO
