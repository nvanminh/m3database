CREATE TABLE [dbo].[iO_Test_ValuePopulationTestTemplate]
(
[TSTvpt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TSTvpt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTvpt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTvpt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTvpt_IDLink_TSTc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTvpt_SeqNumber] [int] NULL,
[TSTvpt_Criteria] [varchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTvpt_FieldPrefix] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTvpt_DealID] [bigint] NULL,
[TSTvpt_OutputFileName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTvpt_Set] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Test_ValuePopulationTestTemplate] ADD CONSTRAINT [PK_iO_TEST_ValuePopulationTestTemplate] PRIMARY KEY CLUSTERED  ([TSTvpt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
