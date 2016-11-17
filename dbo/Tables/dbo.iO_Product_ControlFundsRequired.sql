CREATE TABLE [dbo].[iO_Product_ControlFundsRequired]
(
[RCFr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCFr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFr_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFr_IDLink_XFUr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCFr_IDUser] [int] NULL,
[RCFr_Type] [int] NULL,
[RCFr_Value] [float] NULL,
[RCFr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlFundsRequired] ADD CONSTRAINT [PK_iO_Product_ControlFundsRequired] PRIMARY KEY CLUSTERED  ([RCFr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFundsRequired', 'COLUMN', N'RCFr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFundsRequired', 'COLUMN', N'RCFr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFundsRequired', 'COLUMN', N'RCFr_Ownership'
GO
