CREATE TABLE [dbo].[io_Product_SecurityGuarantees]
(
[RSG_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSG_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSG_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSG_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSG_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSG_GuaranteeID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSG_IDLink_GuarantorType_RSD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSG_IDLink_CollateralType_RSD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSG_GuarantorShortName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSG_RestrictedTo] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSG_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[io_Product_SecurityGuarantees] ADD CONSTRAINT [PK_iO_Product_SecurityGuarantees] PRIMARY KEY CLUSTERED  ([RSG_ID]) ON [PRIMARY]
GO
