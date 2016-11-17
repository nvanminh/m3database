CREATE TABLE [dbo].[iO_Document_IndexDetail]
(
[DID_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DID_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DID_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DID_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DID_IDLink_DIM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DID_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DID_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DID_Attach] [bit] NULL,
[DID_SeqNumber] [bigint] NULL,
[DID_Type] [int] NULL,
[DID_Title] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DID_Subject] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DID_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Document_IndexDetail] ADD CONSTRAINT [PK_iO_Document_IndexDetail] PRIMARY KEY CLUSTERED  ([DID_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Document_IndexDetail] ON [dbo].[iO_Document_IndexDetail] ([DID_IDLink_DIM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
