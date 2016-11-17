CREATE TABLE [dbo].[iO_System_FraudAddress]
(
[SYSfa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSfa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_IDLink_SYSfm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_PropertyName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_SuiteNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_FloorNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_UnitNumber] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_LotNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_FolioNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_StreetNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_StreetName] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_StreetTypeDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_CityDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_State] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_PostCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_CountryDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSfa_PropertyNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_StreetDirectionDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_BoxTypeDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_BoxNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_AdditionalInfo] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_StreetStart] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_StreetEnd] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfa_StreetMajorInt] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_FraudAddress] ADD CONSTRAINT [PK_iO_System_FraudAddress] PRIMARY KEY CLUSTERED  ([SYSfa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudAddress', 'COLUMN', N'SYSfa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudAddress', 'COLUMN', N'SYSfa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudAddress', 'COLUMN', N'SYSfa_Ownership'
GO
