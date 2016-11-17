CREATE TABLE [dbo].[iO_Control_AddressAreWereYou]
(
[XATawy_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XATawy_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XATawy_IDUser] [int] NULL,
[XATawy_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XATawy_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XATawy_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XATawy_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XATawy_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_AddressAreWereYou] ADD CONSTRAINT [PK_iO_Control_AddressAreWereYou] PRIMARY KEY CLUSTERED  ([XATawy_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_AddressAreWereYou', 'COLUMN', N'XATawy_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_AddressAreWereYou', 'COLUMN', N'XATawy_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_AddressAreWereYou', 'COLUMN', N'XATawy_Ownership'
GO
