CREATE TABLE [dbo].[iO_AssetMgtVEHAccident]
(
[ASVa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASVa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASVa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_IDLink_ASV] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_IDLink_Driver] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_IDLink_XDT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ASVa_IDUser] [int] NULL,
[ASVa_Code] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_ResponsibleParty] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_Reference] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_Location] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_CaseNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_Charges] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_Date] [datetime] NULL,
[ASVa_Damage] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ASVa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_AssetMgtVEHAccident] ADD CONSTRAINT [PK_iO_AssetMgtVEHAccident] PRIMARY KEY CLUSTERED  ([ASVa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_AssetMgtVEHAccident', 'COLUMN', N'ASVa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_AssetMgtVEHAccident', 'COLUMN', N'ASVa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_AssetMgtVEHAccident', 'COLUMN', N'ASVa_Ownership'
GO
