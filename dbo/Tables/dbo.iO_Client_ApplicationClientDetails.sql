CREATE TABLE [dbo].[iO_Client_ApplicationClientDetails]
(
[CAC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_Name] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_EmployerName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_Income] [float] NULL,
[CAC_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_Type] [int] NULL,
[CAC_Relationship] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_DefaultContactType] [int] NULL,
[CAC_SpouseContributes] [int] NULL,
[CAC_IDLink_XFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_IDLink_CAD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_DateCalled] [datetime] NULL,
[CAC_Agent] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_ContactTitle] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_PaymentsUpToDate] [bit] NULL,
[CAC_LeaseAgreement] [bit] NULL,
[CAC_ThreeStatements] [bit] NULL,
[CAC_IsCentrePaid] [bit] NULL,
[CAC_BoardArrearsAmount] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_ApplicationClientDetails] ADD CONSTRAINT [PK_iO_Client_ApplicationClientDetails] PRIMARY KEY CLUSTERED  ([CAC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Client_ApplicationClientDetai_83_1771205410__K9_K8_K1_5] ON [dbo].[iO_Client_ApplicationClientDetails] ([CAC_Type], [CAC_IDLink_CMR], [CAC_ID]) INCLUDE ([CAC_Name]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ApplicationClientDetails', 'COLUMN', N'CAC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ApplicationClientDetails', 'COLUMN', N'CAC_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ApplicationClientDetails', 'COLUMN', N'CAC_Ownership'
GO
