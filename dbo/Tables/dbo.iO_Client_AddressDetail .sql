CREATE TABLE [dbo].[iO_Client_AddressDetail ]
(
[CAD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_IDLink_XAT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_IDLink_StreetType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_IDLink_Country] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CAD_Type] [int] NULL,
[CAD_IDUser] [int] NULL,
[CAD_ActionType] [int] NULL,
[CAD_PropertyName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_UnitNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_StreetNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_StreetName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_City] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_State] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_PostCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_SuiteNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_FloorNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_DefaultAddress] [bit] NULL,
[CAD_Direction] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAD_MonthsAtAddress] [int] NULL,
[CAD_RentPayment] [float] NULL,
[CAD_StreetType] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_AddressDetail ] ADD CONSTRAINT [PK_iO_Client_AddressDetail] PRIMARY KEY CLUSTERED  ([CAD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_AddressDetail] ON [dbo].[iO_Client_AddressDetail ] ([CAD_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Client_AddressDetail _83_1189631331__K7] ON [dbo].[iO_Client_AddressDetail ] ([CAD_IDLink_XAT]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressDetail ', 'COLUMN', N'CAD_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressDetail ', 'COLUMN', N'CAD_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressDetail ', 'COLUMN', N'CAD_Ownership'
GO
