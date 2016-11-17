CREATE TABLE [dbo].[iO_Test_StateTestInput]
(
[TSTsti_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTsti_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTsti_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTsti_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTsti_IDLink_TSTmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTsti_SeqNumber] [bigint] NULL,
[TSTsti_FieldName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTsti_FieldId] [int] NULL
) ON [PRIMARY]
GO
