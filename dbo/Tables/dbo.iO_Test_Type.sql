CREATE TABLE [dbo].[iO_Test_Type]
(
[TSTt_Id] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TSTt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTt_IDUser] [int] NULL,
[TSTt_Detail] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TSTt_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Test_Type] ADD CONSTRAINT [PK_iO_Test_Type] PRIMARY KEY CLUSTERED  ([TSTt_Id]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
