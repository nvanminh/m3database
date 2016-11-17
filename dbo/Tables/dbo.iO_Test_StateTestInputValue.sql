CREATE TABLE [dbo].[iO_Test_StateTestInputValue]
(
[TSTstiv_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TSTstiv_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstiv_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstiv_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstiv_IDLink_TSTsti] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstiv_IDLink_TSTstd] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstiv_SeqNumber] [bigint] NULL,
[TSTstiv_Value] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstiv_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Test_StateTestInputValue] ADD CONSTRAINT [PK_iO_Test_StateTestInputValue] PRIMARY KEY CLUSTERED  ([TSTstiv_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
