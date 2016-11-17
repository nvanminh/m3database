CREATE TABLE [dbo].[iO_Link_ClientDetail]
(
[LCD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LCD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LCD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LCD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LCD_IDLink_LMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LCD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[LCD_Type] [int] NULL,
[LCD_IDUser] [int] NULL,
[LCD_OwnershipPercentage] [decimal] (18, 0) NULL,
[LCD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Link_ClientDetail] ADD CONSTRAINT [PK_iO_Link_ClientDetail] PRIMARY KEY CLUSTERED  ([LCD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Link_ClientDetail] ON [dbo].[iO_Link_ClientDetail] ([LCD_IDLink_LMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_ClientDetail', 'COLUMN', N'LCD_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_ClientDetail', 'COLUMN', N'LCD_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_ClientDetail', 'COLUMN', N'LCD_Ownership'
GO
