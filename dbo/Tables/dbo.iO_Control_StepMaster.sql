CREATE TABLE [dbo].[iO_Control_StepMaster]
(
[XRU_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRU_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRU_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRU_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRU_IDLink_XSCc] [int] NULL,
[XRU_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRU_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRU_Type] [int] NULL,
[XRU_IDUser] [int] NULL,
[XRU_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRU_ShortNote] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRU_KPIDays] [int] NULL,
[XRU_StatTrack] [bit] NULL,
[XRU_StatAve] [float] NULL,
[XRU_StatMin] [float] NULL,
[XRU_StatMax] [float] NULL,
[XRU_SecurityValue] [int] NULL,
[XRU_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRU_IDLink_PageWeb] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRU_IDLink_PageTablet] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRU_IDLink_PageSmartPhone] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRU_OpenPage] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_StepMaster] ADD CONSTRAINT [PK_iO_Control_StepMaster] PRIMARY KEY CLUSTERED  ([XRU_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_StepMaster] ON [dbo].[iO_Control_StepMaster] ([XRU_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StepMaster', 'COLUMN', N'XRU_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StepMaster', 'COLUMN', N'XRU_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StepMaster', 'COLUMN', N'XRU_Ownership'
GO
