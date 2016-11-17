CREATE TABLE [dbo].[iO_Control_ClientSpecialCondition]
(
[XCSc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCSc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSc_Type] [int] NULL,
[XCSc_IDUser] [int] NULL,
[XCSc_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClientSpecialCondition] ADD CONSTRAINT [PK_iO_Control_ClientConditions] PRIMARY KEY CLUSTERED  ([XCSc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientSpecialCondition', 'COLUMN', N'XCSc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientSpecialCondition', 'COLUMN', N'XCSc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientSpecialCondition', 'COLUMN', N'XCSc_Ownership'
GO
