CREATE TABLE [dbo].[iO_Product_SecurityOtherCharge]
(
[RSO_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSO_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSO_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSO_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSO_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSO_OtherChargeID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSO_IDLink_OtherChargeType_RSD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSO_OtherChargeAssetName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSO_OtherChargeAssetDescription] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSO_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityOtherCharge] ADD CONSTRAINT [PK_iO_Product_SecurityOtherCharge] PRIMARY KEY CLUSTERED  ([RSO_ID]) ON [PRIMARY]
GO
