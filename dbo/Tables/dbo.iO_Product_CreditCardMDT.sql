CREATE TABLE [dbo].[iO_Product_CreditCardMDT]
(
[RCCd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCCd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCCd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCCd_IDUser] [int] NULL,
[RCCd_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_Type] [int] NULL,
[RCCd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_AppReceived] [bit] NULL,
[RCCd_AppFormHeld] [bit] NULL,
[RCCd_FTRAType] [bit] NULL,
[RCCd_FTRA_HCP] [bit] NULL,
[RCCd_FTRA_AR] [bit] NULL,
[RCCd_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_OriginalAppFormHeld] [bit] NULL,
[RCCd_FTRAIdentified] [bit] NULL,
[RCCd_CardNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_CardHolderName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_ExpiryDate] [datetime] NULL,
[RCCd_SetTransfer] [bit] NULL,
[RCCd_ExpiryMonth] [int] NULL,
[RCCd_ExpiryYear] [int] NULL,
[RCCd_CustomerNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_PresetLimit] [float] NULL,
[RCCd_CISNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_UpdateFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_LastLimitSent] [decimal] (18, 0) NULL,
[RCCd_CurrentLimit] [float] NULL,
[RCCd_AdditionalEmbossing1] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCd_AdditionalEmbossing2] [varchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_CreditCardMDT] ADD CONSTRAINT [PK_iO_Product_CreditCardMDT] PRIMARY KEY CLUSTERED  ([RCCd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CreditCardMDT', 'COLUMN', N'RCCd_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CreditCardMDT', 'COLUMN', N'RCCd_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CreditCardMDT', 'COLUMN', N'RCCd_Ownership'
GO
