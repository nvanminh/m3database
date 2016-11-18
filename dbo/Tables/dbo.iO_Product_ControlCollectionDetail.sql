CREATE TABLE [dbo].[iO_Product_ControlCollectionDetail]
(
[RCCd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCCd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCCd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCCd_IDUser] [int] NULL,
[RCCd_Type] [int] NULL,
[RCCd_IDLink_RCCa] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlCollectionDetail] ADD CONSTRAINT [PK__iO_Produ__D97BDFFA210894A8] PRIMARY KEY CLUSTERED  ([RCCd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
