CREATE TABLE [dbo].[iO_Test_StateTestDetail]
(
[TSTstd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TSTstd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstd_IDLink_TSTmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstd_SeqNumber] [bigint] NULL,
[TSTstd_FieldName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstd_FieldId] [int] NULL,
[TSTstd_ExpectedValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstd_ActualValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTstd_Result] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Test_StateTestDetail] ADD CONSTRAINT [PK_iO_Test_StateTestDetail] PRIMARY KEY CLUSTERED  ([TSTstd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
