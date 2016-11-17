CREATE TABLE [dbo].[iO_DNB_ResponseErrors]
(
[DNBe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_SeqNumber] [bigint] NULL,
[DNBe_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_ElementName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_XPath] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseErrors] ADD CONSTRAINT [PK_iO_DNB_Errors] PRIMARY KEY CLUSTERED  ([DNBe_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
