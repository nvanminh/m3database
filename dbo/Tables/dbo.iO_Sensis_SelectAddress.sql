CREATE TABLE [dbo].[iO_Sensis_SelectAddress]
(
[SSlA_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SSlA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_BarCode] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_BSP] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_DPID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_FormatAddress] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_PrintedInWPBook] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_PhoneNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_Postal] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_ResultStatus] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_PrimaryName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_SecondaryName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_StreetNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_StreetName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_StreetType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_BuildingName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_SubPremise] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_Suburb] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_State] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_PostCode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_ListingType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSlA_WhitePages] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Sensis_SelectAddress] ADD CONSTRAINT [iO_Sensis_SelectAddress_PrimaryKey] PRIMARY KEY CLUSTERED  ([SSlA_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Sensis_SelectAddress', 'COLUMN', N'SSlA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Sensis_SelectAddress', 'COLUMN', N'SSlA_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Sensis_SelectAddress', 'COLUMN', N'SSlA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Sensis_SelectAddress', 'COLUMN', N'SSlA_Ownership'
GO
