CREATE TABLE [dbo].[iO_Control_SystemBankBSB]
(
[XSYSbsb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSbsb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_IDLink_XSYSct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_Type] [int] NULL,
[XSYSbsb_IDUser] [int] NULL,
[XSYSbsb_BSBNumber] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_BankName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_AddressLine] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_City] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_State] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_PostCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSbsb_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemBankBSB] ADD CONSTRAINT [PK_iO_Control_SystemBankBSB] PRIMARY KEY CLUSTERED  ([XSYSbsb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_SystemBankBSB] ON [dbo].[iO_Control_SystemBankBSB] ([XSYSbsb_BSBNumber]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemBankBSB', 'COLUMN', N'XSYSbsb_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemBankBSB', 'COLUMN', N'XSYSbsb_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemBankBSB', 'COLUMN', N'XSYSbsb_Ownership'
GO
