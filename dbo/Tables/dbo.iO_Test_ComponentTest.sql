CREATE TABLE [dbo].[iO_Test_ComponentTest]
(
[TSTct_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TSTct_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTct_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTct_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTct_IDLink_TSTc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTct_SeqNumber] [bigint] NULL,
[TSTct_TestType] [int] NULL,
[TSTct_TestFileLocation] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTct_DealFileLocation] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTct_PreExecutionStep] [int] NULL,
[TSTct_PostExecutionStep] [int] NULL,
[TSTct_ExecuteTests] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Test_ComponentTest] ADD CONSTRAINT [PK_iO_Test_ComponentTest] PRIMARY KEY CLUSTERED  ([TSTct_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
