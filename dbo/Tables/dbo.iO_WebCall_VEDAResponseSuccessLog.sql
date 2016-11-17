CREATE TABLE [dbo].[iO_WebCall_VEDAResponseSuccessLog]
(
[WCVrsl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WCVrsl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrsl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrsl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrsl_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrsl_IDLink_TFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrsl_Outcome] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrsl_Total_Points] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVrsl_DateOfSuccess] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_WebCall_VEDAResponseSuccessLog] ADD CONSTRAINT [PK__iO_WebCa__9FE44C8B8FC14892] PRIMARY KEY CLUSTERED  ([WCVrsl_ID]) ON [PRIMARY]
GO
