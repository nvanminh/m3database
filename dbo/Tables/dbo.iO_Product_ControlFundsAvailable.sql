CREATE TABLE [dbo].[iO_Product_ControlFundsAvailable]
(
[RCFa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCFa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFa_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFa_IDLink_XFUa] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCFa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCFa_IDUser] [int] NULL,
[RCFa_Type] [int] NULL,
[RCFa_Value] [float] NULL,
[RCFa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlFundsAvailable] ADD CONSTRAINT [PK_iO_Product_ControlFundsAvailable] PRIMARY KEY CLUSTERED  ([RCFa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFundsAvailable', 'COLUMN', N'RCFa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFundsAvailable', 'COLUMN', N'RCFa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlFundsAvailable', 'COLUMN', N'RCFa_Ownership'
GO
