CREATE TABLE [dbo].[iO_Control_FundsAvailable]
(
[XFUa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFUa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFUa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFUa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFUa_IDLink_XSCc] [int] NULL,
[XFUa_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFUa_Type] [int] NULL,
[XFUa_IDUser] [int] NULL,
[XFUa_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFUa_SecurityValue] [int] NULL,
[XFUa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFUa_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FundsAvailable] ADD CONSTRAINT [PK_iO_Control_FundsAvailable] PRIMARY KEY CLUSTERED  ([XFUa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FundsAvailable', 'COLUMN', N'XFUa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FundsAvailable', 'COLUMN', N'XFUa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FundsAvailable', 'COLUMN', N'XFUa_Ownership'
GO
