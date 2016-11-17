CREATE TABLE [dbo].[iO_Product_ControlDate]
(
[RCD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCD_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCD_IDLink_XCD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCD_IDUser] [int] NULL,
[RCD_Type] [int] NULL,
[RCD_CurrentStart] [datetime] NULL,
[RCD_CurrentEnd] [datetime] NULL,
[RCD_LastStart] [datetime] NULL,
[RCD_LastEnd] [datetime] NULL,
[RCD_Start] [datetime] NULL,
[RCD_End] [datetime] NULL,
[RCD_Next] [datetime] NULL,
[RCD_Prev] [datetime] NULL,
[RCD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlDate] ADD CONSTRAINT [PK_iO_Product_ControlDate] PRIMARY KEY CLUSTERED  ([RCD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlDate_10] ON [dbo].[iO_Product_ControlDate] ([RCD_IDLink_RMR], [RCD_Type], [RCD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlDate', 'COLUMN', N'RCD_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlDate', 'COLUMN', N'RCD_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlDate', 'COLUMN', N'RCD_Ownership'
GO
