CREATE TABLE [dbo].[iO_Sensis_SuggestAddresses]
(
[SSA_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SSA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_AddressLong] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_Index] [int] NULL,
[SSA_AddressShort] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_SecondaryName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_StreetNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_StreetName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_Suburb] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_State] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_PhoneNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_WhitePages] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSA_Postal] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Sensis_SuggestAddresses] ADD CONSTRAINT [iO_Sensis_suggestaddresses_PrimaryKey] PRIMARY KEY CLUSTERED  ([SSA_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Sensis_SuggestAddresses', 'COLUMN', N'SSA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Sensis_SuggestAddresses', 'COLUMN', N'SSA_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Sensis_SuggestAddresses', 'COLUMN', N'SSA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Sensis_SuggestAddresses', 'COLUMN', N'SSA_Ownership'
GO
