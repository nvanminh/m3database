CREATE TABLE [dbo].[iO_WebCall_VEDAResponseMessages]
(
[WCVrm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WCVrm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrm_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrm_IDLink_TFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[WCVrm_MessageCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrm_Message] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_WebCall_VEDAResponseMessages] ADD CONSTRAINT [PK_iO_WebCall_VEDAResponseMessages] PRIMARY KEY CLUSTERED  ([WCVrm_ID]) ON [PRIMARY]
GO
