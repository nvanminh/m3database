CREATE TABLE [dbo].[io_Product_SecurityDropdowns]
(
[RSD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSD_Category] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSD_SubCategory] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSD_Detail] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSD_SubDetail] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[io_Product_SecurityDropdowns] ADD CONSTRAINT [PK_iO_Product_SecurityDropdowns] PRIMARY KEY CLUSTERED  ([RSD_ID]) ON [PRIMARY]
GO
