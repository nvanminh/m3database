CREATE TABLE [dbo].[iO_Document_IndexMaster]
(
[DIM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIM_IDLink_ServiceID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIM_SeqNumber] [bigint] NULL,
[DIM_Type] [int] NULL,
[DIM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Document_IndexMaster] ADD CONSTRAINT [PK_iO_Document_IndexMaster] PRIMARY KEY CLUSTERED  ([DIM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Document_IndexMaster] ON [dbo].[iO_Document_IndexMaster] ([DIM_IDLink_ServiceID], [DIM_Type]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
