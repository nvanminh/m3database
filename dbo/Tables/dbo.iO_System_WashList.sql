CREATE TABLE [dbo].[iO_System_WashList]
(
[SWL_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SWL_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SWL_IDUser] [int] NULL,
[SWL_Type] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_Note] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_CompanyName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_FirstName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_MiddleNames] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_LastName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_DOB] [datetime] NULL,
[SWL_ABN] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_PhoneNumber] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_PropertyName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_SuiteNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_FloorNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_UnitNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_StreetNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_StreetName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_IDLink_StreetType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_City] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_State] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_PostCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_Country] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SWL_IDLink_XCO] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_WashList] ADD CONSTRAINT [PK_iO_System_WashList] PRIMARY KEY CLUSTERED  ([SWL_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_WashList', 'COLUMN', N'SWL_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_WashList', 'COLUMN', N'SWL_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_WashList', 'COLUMN', N'SWL_Ownership'
GO
