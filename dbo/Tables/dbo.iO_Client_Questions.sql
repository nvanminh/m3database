CREATE TABLE [dbo].[iO_Client_Questions]
(
[CTQ_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTQ_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTQ_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTQ_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTQ_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTQ_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CTQ_IDUser] [int] NULL,
[CTQ_Type] [int] NULL,
[CTQ_Question] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTQ_Answer] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTQ_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_Questions] ADD CONSTRAINT [PK_iO_Client_Questions_Cache] PRIMARY KEY CLUSTERED  ([CTQ_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_Questions] ON [dbo].[iO_Client_Questions] ([CTQ_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
