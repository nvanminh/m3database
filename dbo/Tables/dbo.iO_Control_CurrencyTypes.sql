CREATE TABLE [dbo].[iO_Control_CurrencyTypes]
(
[XCC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCC_CurrencyRegion] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCC_Value] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_CurrencyTypes] ADD CONSTRAINT [PK_iO_Control_CurrencyTypes] PRIMARY KEY CLUSTERED  ([XCC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_CurrencyTypes', 'COLUMN', N'XCC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_CurrencyTypes', 'COLUMN', N'XCC_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_CurrencyTypes', 'COLUMN', N'XCC_Ownership'
GO
