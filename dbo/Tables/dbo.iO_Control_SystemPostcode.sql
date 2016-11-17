CREATE TABLE [dbo].[iO_Control_SystemPostcode]
(
[XSYSpc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSpc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_IDLink_XSYSct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_Type] [int] NULL,
[XSYSpc_IDUser] [int] NULL,
[XSYSpc_CITY] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_STATE] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_POSTCODE] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_PreSortIndicator] [int] NULL,
[XSYSpc_Latitude] [float] NULL,
[XSYSpc_Longitude] [float] NULL,
[XSYSpc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_PostcodeType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_CityType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_StateAbbr] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_StateFIPS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_Comments] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_IDLink_Country] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_CountyName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_CountyFIPS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_MSACode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_AreaCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_TimeZone] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_UTC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_DST] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_Comments1] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSpc_XMLPopulationDensity] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemPostcode] ADD CONSTRAINT [PK_iO_Control_SystemPostcode] PRIMARY KEY CLUSTERED  ([XSYSpc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_SystemPostcode] ON [dbo].[iO_Control_SystemPostcode] ([XSYSpc_POSTCODE]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemPostcode', 'COLUMN', N'XSYSpc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemPostcode', 'COLUMN', N'XSYSpc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemPostcode', 'COLUMN', N'XSYSpc_Ownership'
GO
