CREATE TABLE [dbo].[iO_WebCall_VEDAResponseErrors]
(
[WCVre_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WCVre_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVre_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVre_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVre_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVre_IDLink_TFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVre_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[WCVre_FaultCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVre_FaultString] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVre_FaultActor] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVre_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVre_DateOfError] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_WebCall_VEDAResponseErrors] ADD CONSTRAINT [PK_iO_WebCall_VEDAResponseWarnings] PRIMARY KEY CLUSTERED  ([WCVre_ID]) ON [PRIMARY]
GO
