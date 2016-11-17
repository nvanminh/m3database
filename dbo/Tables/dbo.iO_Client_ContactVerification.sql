CREATE TABLE [dbo].[iO_Client_ContactVerification]
(
[CAVc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAVc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAVc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CAVc_Contact] [int] NULL,
[CAVc_RelationToClient] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVc_PermissionAsRef] [int] NULL,
[CAVc_RegularContact] [int] NULL,
[CAVc_ReceiveCallAnytime] [int] NULL,
[CAVc_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAVc_ContactAcceptable] [int] NULL,
[CAVc_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_ContactVerification] ADD CONSTRAINT [PK_iO_Client_ContactVerification] PRIMARY KEY CLUSTERED  ([CAVc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ContactVerification', 'COLUMN', N'CAVc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ContactVerification', 'COLUMN', N'CAVc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ContactVerification', 'COLUMN', N'CAVc_Ownership'
GO
