CREATE TABLE [dbo].[iO_Test_MasterReference]
(
[TSTmr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TSTmr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmr_IDLink_TSTc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmr_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmr_SeqNumber] [bigint] NULL,
[TSTmr_TestType] [int] NULL,
[TSTmr_TestFileLocation] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmr_DealFileLocation] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmr_TotalTests] [int] NULL,
[TSTmr_PassedTests] [int] NULL,
[TSTmr_FailedTests] [int] NULL,
[TSTmr_StartTime] [datetime] NULL,
[TSTmr_EndTime] [datetime] NULL,
[TSTmr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmr_Set] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmr_PreExecutionStep] [int] NULL,
[TSTmr_PostExecutionStep] [int] NULL,
[TSTmr_ExecuteTests] [bit] NULL,
[TSTmr_IDLink_TSTct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Test_MasterReference] ADD CONSTRAINT [PK_iO_Test_MasterReference] PRIMARY KEY CLUSTERED  ([TSTmr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
