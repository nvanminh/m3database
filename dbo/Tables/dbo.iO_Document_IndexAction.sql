CREATE TABLE [dbo].[iO_Document_IndexAction]
(
[DIA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIA_IDLink_DID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIA_SeqNumber] [bigint] NULL,
[DIA_Type] [int] NULL,
[DIA_IDLink_XTKM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIA_Email] [bit] NULL,
[DIA_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIA_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DIA_IDLink_Association] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Document_IndexAction] ADD CONSTRAINT [PK_iO_Document_IndexAction] PRIMARY KEY CLUSTERED  ([DIA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
