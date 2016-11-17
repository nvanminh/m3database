CREATE TABLE [dbo].[iO_BCI_ResponseData]
(
[BCIrd_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCIrd_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_SeqNumber] [int] NULL,
[BCIrd_FileType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_FileName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_Creator] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_Encoding] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_FileExtension] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_MIMEType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIrd_Content] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_BCI_ResponseData] ADD CONSTRAINT [io_bci_responsedata_PrimaryKey] PRIMARY KEY CLUSTERED  ([BCIrd_ID]) ON [PRIMARY]
GO
