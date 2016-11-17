CREATE TABLE [dbo].[iO_Product_Commission]
(
[RCM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_Selection] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_GroupBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCM_Type] [int] NULL,
[RCM_IDUser] [int] NULL,
[RCM_Value] [float] NULL,
[RCM_ProcessDate] [datetime] NULL,
[RCM_ISProcessed] [bit] NULL,
[RCM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_Batch] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_GeneratedDate] [datetime] NULL,
[RCM_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_RMR_in] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_RMR_out] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCM_IDLink_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_Commission] ADD CONSTRAINT [PK_iO_Client_Commission] PRIMARY KEY CLUSTERED  ([RCM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_Commission', 'COLUMN', N'RCM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_Commission', 'COLUMN', N'RCM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_Commission', 'COLUMN', N'RCM_Ownership'
GO
