CREATE TABLE [dbo].[iO_Test_MappingReportDetail]
(
[TSTmrd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TSTmrd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_IDLink_TSTmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_SeqNumber] [bigint] NULL,
[TSTmrd_TableName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_TableIdField] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_TableDetailField] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_TableUserIdField] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_TableFilter] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_ExpectedItems] [int] NULL,
[TSTmrd_SourceFieldId] [int] NULL,
[TSTmrd_SourceFieldName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_DestinationFieldId] [int] NULL,
[TSTmrd_DestinationFieldName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTmrd_ActualItems] [int] NULL,
[TSTmrd_ItemsResult] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Test_MappingReportDetail] ADD CONSTRAINT [PK_iO_Test_MappingReportDetail] PRIMARY KEY CLUSTERED  ([TSTmrd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
