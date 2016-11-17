CREATE TABLE [dbo].[iO_B2B_Errors]
(
[BBem_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBem_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBem_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBem_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBem_IDLink_BBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBem_ErrTypCode] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBem_ErrTypDesc] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBem_InputContainer] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBem_ErrMsgDesc] [varchar] (77) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBem_ErrMsgCode] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBem_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_Errors] ADD CONSTRAINT [PK_iO_B2B_Errors] PRIMARY KEY CLUSTERED  ([BBem_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_Errors', 'COLUMN', N'BBem_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_Errors', 'COLUMN', N'BBem_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_Errors', 'COLUMN', N'BBem_Ownership'
GO
