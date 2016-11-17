CREATE TABLE [dbo].[iO_Control_StatusMaster]
(
[XSU_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSU_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSU_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_IDLink_XSCc] [int] NULL,
[XSU_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_IDLink_Form] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_Type] [int] NULL,
[XSU_IDUser] [int] NULL,
[XSU_IDARMclassic] [int] NULL,
[XSU_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_SecurityValue] [int] NULL,
[XSU_KPIDays] [int] NULL,
[XSU_StatTrack] [bit] NULL,
[XSU_StatAve] [float] NULL,
[XSU_StatMin] [float] NULL,
[XSU_StatMax] [float] NULL,
[XSU_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_AlternateDetail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_Color] [int] NULL,
[XSU_StatPeriod] [int] NULL,
[XSU_StatYTD] [int] NULL,
[XSU_IDLink_DurationMove_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_IDLink_DurationType] [int] NULL,
[XSU_DurationValue] [int] NULL,
[XSU_InterestTrack] [bit] NULL,
[XSU_IDLink_Interest_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_IDLink_Update_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_StopTask] [bit] NULL,
[XSU_StopTransaction] [bit] NULL,
[XSU_FeeCommissionTrack] [bit] NULL,
[XSU_IDLink_PageWeb] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_IDLink_PageTablet] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_IDLink_PageSmartPhone] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_IDLink_Display_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_InterestTrackAdditional] [bit] NULL,
[XSU_InterestDisableUseControlBalance] [bit] NULL,
[XSU_DurationInSeconds] [bigint] NULL,
[XSU_Key01] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSU_Key02] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_StatusMaster] ADD CONSTRAINT [PK_iO_Control_StatusMaster] PRIMARY KEY CLUSTERED  ([XSU_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_StatusMaster] ON [dbo].[iO_Control_StatusMaster] ([XSU_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StatusMaster', 'COLUMN', N'XSU_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StatusMaster', 'COLUMN', N'XSU_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StatusMaster', 'COLUMN', N'XSU_Ownership'
GO
