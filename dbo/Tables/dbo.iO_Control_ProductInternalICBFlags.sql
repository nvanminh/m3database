CREATE TABLE [dbo].[iO_Control_ProductInternalICBFlags]
(
[XICB_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XICB_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XICB_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XICB_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XICB_InternalFlag] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XICB_InternalDetail] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XICB_ICBFlag] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XICB_ICBDetail] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XICB_IDuser] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductInternalICBFlags] ADD CONSTRAINT [PK_iO_Control_ProductInternalICBFlags] PRIMARY KEY CLUSTERED  ([XICB_ID]) ON [PRIMARY]
GO
