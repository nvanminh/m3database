CREATE TABLE [dbo].[iO_User_SearchHistory]
(
[USH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[USH_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[USH_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USH_Type] [int] NOT NULL,
[USH_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USH_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_User_SearchHistory] ADD CONSTRAINT [PK_iO_User_SearchHistory] PRIMARY KEY NONCLUSTERED  ([USH_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_User_SearchHistory] ON [dbo].[iO_User_SearchHistory] ([USH_IDLink_User], [USH_Type], [USH_SeqNumber]) ON [PRIMARY]
GO
