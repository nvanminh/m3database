CREATE TABLE [dbo].[iO_Exception_CCReference]
(
[EXPcc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPcc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_IDLink_Batch] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_DateRun] [datetime] NULL,
[EXPcc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[EXPcc_Type] [int] NULL,
[EXPcc_IDUser] [int] NULL,
[EXPcc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_CardNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_CardHolderName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_ExpiryDate] [datetime] NULL,
[EXPcc_ExpiryMonth] [int] NULL,
[EXPcc_ExpiryYear] [int] NULL,
[EXPcc_Description] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_Amount] [float] NULL,
[EXPcc_TitleOfAccount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_LodgementRef] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_TraceRecord] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_TraceAccount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXPcc_NameOfRemitter] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Exception_CCReference] ADD CONSTRAINT [PK_iO_Exception_CCReference] PRIMARY KEY CLUSTERED  ([EXPcc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Exception_CCReference', 'COLUMN', N'EXPcc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Exception_CCReference', 'COLUMN', N'EXPcc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Exception_CCReference', 'COLUMN', N'EXPcc_Ownership'
GO
