CREATE TABLE [dbo].[iO_Client_ContactDetail]
(
[CCD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_IDLink_XCT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CCD_Details] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_IDUser] [int] NULL,
[CCD_Type] [int] NULL,
[CCD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_AreaCode] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_PreferredContactType] [int] NULL,
[CCD_ISD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCD_Extension] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_ContactDetail] ADD CONSTRAINT [PK_iO_Client_ContactDetail] PRIMARY KEY CLUSTERED  ([CCD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iO_Client_ContactDetail_Details] ON [dbo].[iO_Client_ContactDetail] ([CCD_Details]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_ContactDetail] ON [dbo].[iO_Client_ContactDetail] ([CCD_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Client_ContactDetail_83_2007014231__K6_K5_K1_8_12_14_15] ON [dbo].[iO_Client_ContactDetail] ([CCD_IDLink_XCT], [CCD_IDLink_CMR], [CCD_ID]) INCLUDE ([CCD_AreaCode], [CCD_Details], [CCD_Extension], [CCD_ISD]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ContactDetail', 'COLUMN', N'CCD_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ContactDetail', 'COLUMN', N'CCD_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ContactDetail', 'COLUMN', N'CCD_Ownership'
GO
