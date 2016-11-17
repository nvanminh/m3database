CREATE TABLE [dbo].[iO_Document_MetaData]
(
[DMD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DMD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMD_IDLink_DMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMD_SeqNumber] [bigint] NULL,
[DMD_Type] [int] NULL,
[DMD_IDUser] [int] NULL,
[DMD_Value_01] [float] NULL,
[DMD_Text_01] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMD_Date_01] [datetime] NULL,
[DMD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMD_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DMD_ID_01] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Document_MetaData] ADD CONSTRAINT [PK_iO_Document_MetaData] PRIMARY KEY CLUSTERED  ([DMD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Document_MetaData] ON [dbo].[iO_Document_MetaData] ([DMD_IDLink_DMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
