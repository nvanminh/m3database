CREATE TABLE [dbo].[tempTransAppFee]
(
[RTM_IDLink_RMR] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXAppFee] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tempTransAppFeePK] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tempTransAppFee] ADD CONSTRAINT [tempTransAppFee_PrimaryKey] PRIMARY KEY CLUSTERED  ([tempTransAppFeePK]) ON [PRIMARY]
GO
