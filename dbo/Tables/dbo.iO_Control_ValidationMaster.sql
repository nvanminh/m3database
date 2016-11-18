CREATE TABLE [dbo].[iO_Control_ValidationMaster]
(
[XVM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XVM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XVM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_Type] [int] NULL,
[XVM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_DisplayOrder] [int] NULL,
[XVM_ObjectType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_ObjectId] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_ValidationType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_Severity] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_Message] [varchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_IDLink_SYSvs] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ValidationMaster] ADD CONSTRAINT [PK__iO_Contr__7C1D5CE2729DE3C4] PRIMARY KEY CLUSTERED  ([XVM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
