CREATE TABLE [dbo].[iO_Product_XMLResponseMessages]
(
[RXM_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RXM_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RXM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RXM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RXM_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RXM_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RXM_SeqNumber] [int] NULL,
[RXM_FileNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RXM_Message] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_XMLResponseMessages] ADD CONSTRAINT [io_product_xmlresponsemessages_PrimaryKey] PRIMARY KEY CLUSTERED  ([RXM_ID]) ON [PRIMARY]
GO
