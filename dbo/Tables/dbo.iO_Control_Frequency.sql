CREATE TABLE [dbo].[iO_Control_Frequency]
(
[XFR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFR_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFR_CoversionFctor] [int] NULL,
[XFR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[XFR_IDUser] [int] NULL,
[XFR_Type] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_Frequency] ADD CONSTRAINT [PK_iO_Control_Frequency] PRIMARY KEY CLUSTERED  ([XFR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Frequency', 'COLUMN', N'XFR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Frequency', 'COLUMN', N'XFR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Frequency', 'COLUMN', N'XFR_Ownership'
GO
