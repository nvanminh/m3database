CREATE TABLE [dbo].[iO_NextGen_ImportMappings]
(
[NGIs_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NGIs_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NGIs_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NGIs_SeqNumber] [int] NOT NULL IDENTITY(1, 1),
[NGIs_Type] [int] NULL,
[NGIs_Text] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NGIs_ARMNETGUID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NGIs_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NGIs_IDUser] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
