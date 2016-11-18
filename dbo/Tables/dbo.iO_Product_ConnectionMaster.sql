CREATE TABLE [dbo].[iO_Product_ConnectionMaster]
(
[RCONm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCONm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCONm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCONm_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCONm_IDLink_Parent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCONm_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCONm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCONm_Type] [int] NULL,
[RCONm_IDUser] [int] NULL,
[RCONm_Level] [int] NULL,
[RCONm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ConnectionMaster] ADD CONSTRAINT [PK__iO_Produ__585DAD77E7FC99B6] PRIMARY KEY CLUSTERED  ([RCONm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ConnectionMaster] ON [dbo].[iO_Product_ConnectionMaster] ([RCONm_IDLink_RMR]) ON [PRIMARY]
GO
