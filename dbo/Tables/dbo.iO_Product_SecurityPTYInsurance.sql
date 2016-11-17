CREATE TABLE [dbo].[iO_Product_SecurityPTYInsurance]
(
[RSPi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPi_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPi_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPi_IDLink_XDT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPi_RecordID] [int] NULL,
[RSPi_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RSPi_PolicyID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPi_Value] [float] NULL,
[RSPi_DateStart] [datetime] NULL,
[RSPi_DateExpiry] [datetime] NULL,
[RSPi_LetterDaysBefore] [int] NULL,
[RSPi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPi_IDUser] [int] NULL,
[RSPi_Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPi_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPi_Description] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPi_PremiumAmount] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityPTYInsurance] ADD CONSTRAINT [PK_iO_Product_SecurityInsurance] PRIMARY KEY CLUSTERED  ([RSPi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_SecurityPTYInsurance] ON [dbo].[iO_Product_SecurityPTYInsurance] ([RSPi_IDLink_RSP]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityPTYInsurance', 'COLUMN', N'RSPi_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityPTYInsurance', 'COLUMN', N'RSPi_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityPTYInsurance', 'COLUMN', N'RSPi_Ownership'
GO
