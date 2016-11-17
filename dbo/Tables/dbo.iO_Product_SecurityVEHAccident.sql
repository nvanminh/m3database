CREATE TABLE [dbo].[iO_Product_SecurityVEHAccident]
(
[RSCa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSCa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSCa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_IDLink_RSC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_IDLink_Driver] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_IDLink_XDT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RSCa_IDUser] [int] NULL,
[RSCa_Code] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_ResponsibleParty] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_Reference] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_Location] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_CaseNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_Charges] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_Date] [datetime] NULL,
[RSCa_Damage] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSCa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityVEHAccident] ADD CONSTRAINT [PK_iO_Product_SecurityVEHAccident] PRIMARY KEY CLUSTERED  ([RSCa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_SecurityVEHAccident] ON [dbo].[iO_Product_SecurityVEHAccident] ([RSCa_IDLink_RSC]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityVEHAccident', 'COLUMN', N'RSCa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityVEHAccident', 'COLUMN', N'RSCa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityVEHAccident', 'COLUMN', N'RSCa_Ownership'
GO
