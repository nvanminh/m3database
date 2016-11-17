CREATE TABLE [dbo].[iO_Control_SystemBankCan]
(
[XSYScan_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYScan_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_IDLink_XSYSct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_BSBNumber] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_AddressLine] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_City] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_State] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_PostCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_BankName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_InstitutionName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_InstitutionID] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_InstitutionTransitNumber] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScan_Type] [int] NULL,
[XSYScan_IDUser] [int] NULL,
[XSYScan_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemBankCan] ADD CONSTRAINT [PK_iO_Control_SystemBankCAN] PRIMARY KEY CLUSTERED  ([XSYScan_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
