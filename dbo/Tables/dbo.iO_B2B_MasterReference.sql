CREATE TABLE [dbo].[iO_B2B_MasterReference]
(
[BBmr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBmr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[BBmr_RequestTime] [datetime] NULL,
[BBmr_RequestXML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_ResponseXML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_UseInLoanAssessment] [bit] NULL,
[BBmr_ProductType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_EnquiryType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_ContextClientID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_ContextProductID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_ContextLinkMasterID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_LinkAssociationTypeID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_WarningMsgs] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_ErrorMsgs] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_WarningCount] [int] NULL,
[BBmr_ErrorCount] [int] NULL,
[BBmr_Production] [bit] NULL,
[BBmr_ClientSelectionMode] [int] NULL,
[BBmr_BureauRefUsed] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_AccountTypeSelectionMode] [int] NULL,
[BBmr_AccountTypeCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_EnquiryAmtSelectionMode] [int] NULL,
[BBmr_EnquiryAmtUsed] [float] NULL,
[BBmr_RoleTypeSelectionMode] [int] NULL,
[BBmr_RoleTypeUsed] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBmr_Summary] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_MasterReference] ADD CONSTRAINT [PK_iO_B2B_MasterReference] PRIMARY KEY CLUSTERED  ([BBmr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_MasterReference', 'COLUMN', N'BBmr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_MasterReference', 'COLUMN', N'BBmr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_MasterReference', 'COLUMN', N'BBmr_Ownership'
GO
