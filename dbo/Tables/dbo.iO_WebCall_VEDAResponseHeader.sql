CREATE TABLE [dbo].[iO_WebCall_VEDAResponseHeader]
(
[WCVr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WCVr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_IDLink_TFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[WCVr_EnquiryID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_DatetimeRequested] [datetime] NULL,
[WCVr_DatetimeGenerated] [datetime] NULL,
[WCVr_ClientReference] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_OperatorID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_OperatorName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_ProductName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_PermissionType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_PermissionTypeCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_ProductDataLevel] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_ProductDataLevelCode] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVr_ProductVersion] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_WebCall_VEDAResponseHeader] ADD CONSTRAINT [PK_iO_WebCall_VEDAResponse] PRIMARY KEY CLUSTERED  ([WCVr_ID]) ON [PRIMARY]
GO
