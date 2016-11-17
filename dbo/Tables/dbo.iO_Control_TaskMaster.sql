CREATE TABLE [dbo].[iO_Control_TaskMaster]
(
[XTKM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTKM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTKM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_XSCc] [int] NULL,
[XTKM_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_AnchorType] [int] NULL,
[XTKM_IDLink_AnchorCode] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_OffSetType] [int] NULL,
[XTKM_IDLink_DurationType] [int] NULL,
[XTKM_IDLink_XSU_Blocks] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_CMR_AutoAssign] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_Key1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_Auto] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_Dependency] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_Form] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_IDLink_TaskSelect] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_Type] [int] NULL,
[XTKM_IDUser] [int] NULL,
[XTKM_IDARMclassic] [int] NULL,
[XTKM_FQType] [int] NULL,
[XTKM_FQDayEvery] [int] NULL,
[XTKM_FQWeekEvery] [int] NULL,
[XTKM_FQWeekDay1] [bit] NULL,
[XTKM_FQWeekDay2] [bit] NULL,
[XTKM_FQWeekDay3] [bit] NULL,
[XTKM_FQWeekDay4] [bit] NULL,
[XTKM_FQWeekDay5] [bit] NULL,
[XTKM_FQWeekDay6] [bit] NULL,
[XTKM_FQWeekDay7] [bit] NULL,
[XTKM_FQMonthEvery] [int] NULL,
[XTKM_FQMonthType] [int] NULL,
[XTKM_FQMonthOption] [int] NULL,
[XTKM_FQYearEvery] [int] NULL,
[XTKM_SecurityValue] [int] NULL,
[XTKM_MoreThanOneActive] [bit] NULL,
[XTKM_OffSetValue] [int] NULL,
[XTKM_DurationValue] [int] NULL,
[XTKM_ProcessOrder] [int] NULL,
[XTKM_BusinessDayCheck] [bit] NULL,
[XTKM_BusinessDayMovement] [int] NULL,
[XTKM_PendingOnly] [bit] NULL,
[XTKM_OffSetValuePerCycle] [bit] NULL,
[XTKM_OffSetByDayOnceOnly] [bit] NULL,
[XTKM_MustLinkAccountClient] [bit] NULL,
[XTKM_BusinessDayValue] [int] NULL,
[XTKM_AlternateDetail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_LevelDelegation] [int] NULL,
[XTKM_LevelWaive] [int] NULL,
[XTKM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKM_PriorityValue] [int] NULL,
[XTKM_ConversionFactor] [float] NULL,
[XTKM_MasterOneActiveOnly] [bit] NULL,
[XTKM_DayStartOffSetValue] [int] NULL,
[XTKM_ConversionFactor2] [float] NULL,
[XTKM_TypeSOD] [bit] NULL,
[XTKM_FeeProcessingActive] [bit] NULL,
[XTKM_TypeSystem] [int] NULL,
[XTKM_UtilizationUnits] [int] NULL,
[XTKM_Time] [time] (0) NULL,
[XTKM_RepeatFrequencyMinutes] [int] NULL,
[XTKM_RepeatDurationMinutes] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TaskMaster] ADD CONSTRAINT [PK_iO_Control_TaskMaster] PRIMARY KEY CLUSTERED  ([XTKM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_TaskMaster] ON [dbo].[iO_Control_TaskMaster] ([XTKM_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TaskMaster', 'COLUMN', N'XTKM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TaskMaster', 'COLUMN', N'XTKM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TaskMaster', 'COLUMN', N'XTKM_Ownership'
GO
