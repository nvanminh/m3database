CREATE TABLE [dbo].[iO_Client_AddressProperties]
(
[CAP_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAP_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAP_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_IDLink_XAT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_IDLink_XATawy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_PayAmount] [float] NULL,
[CAP_ResidenceINYear] [int] NULL,
[CAP_ResidenceINMonth] [int] NULL,
[CAP_ResidenceOUTYear] [int] NULL,
[CAP_ResidenceOUTMonth] [int] NULL,
[CAP_DateSince] [datetime] NULL,
[CAP_IDLink_CAD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_IDUser] [int] NULL,
[CAP_Type] [int] NULL,
[CAP_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CAP_DateMovedIn] [smalldatetime] NULL,
[CAP_DateLeft] [smalldatetime] NULL,
[CAP_ResidenceInTotalMonths] [int] NULL,
[CAP_RentAmount] [float] NULL,
[CAP_BoardFromName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_BoardFromNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_BoardFromNumberAreaCode] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_SeatPerRoom] [int] NULL,
[CAP_BoardFromType] [int] NULL,
[CAP_BoardFromStartDate] [datetime] NULL,
[CAP_LenderName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_LenderAccount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAP_LenderStartDate] [datetime] NULL,
[CAP_LenderBalance] [float] NULL,
[CAP_LenderMonthlyPayment] [float] NULL,
[CAP_LenderRepaid] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_AddressProperties] ADD CONSTRAINT [PK_iO_Client_AddressProperties] PRIMARY KEY CLUSTERED  ([CAP_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_AddressProperties] ON [dbo].[iO_Client_AddressProperties] ([CAP_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressProperties', 'COLUMN', N'CAP_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressProperties', 'COLUMN', N'CAP_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_AddressProperties', 'COLUMN', N'CAP_Ownership'
GO
