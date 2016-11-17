CREATE TABLE [dbo].[iO_Product_SecurityVEHInsurance]
(
[RSCi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSCi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSCi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCi_IDLink_RSC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCi_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCi_IDLink_XDT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCi_RecordID] [int] NULL,
[RSCi_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RSCi_IDUser] [int] NULL,
[RSCi_Type] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCi_Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCi_PolicyID] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCi_Value] [float] NULL,
[RSCi_PremiumAmount] [float] NULL,
[RSCi_DateStart] [datetime] NULL,
[RSCi_DateExpiry] [datetime] NULL,
[RSCi_LetterDaysBefore] [int] NULL,
[RSCi_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityVEHInsurance] ADD CONSTRAINT [PK_iO_Product_SecurityVEHInsurance] PRIMARY KEY CLUSTERED  ([RSCi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_SecurityVEHInsurance] ON [dbo].[iO_Product_SecurityVEHInsurance] ([RSCi_IDLink_RSC]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityVEHInsurance', 'COLUMN', N'RSCi_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityVEHInsurance', 'COLUMN', N'RSCi_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityVEHInsurance', 'COLUMN', N'RSCi_Ownership'
GO
