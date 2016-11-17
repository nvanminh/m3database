CREATE TABLE [dbo].[iO_Product_SecurityMDT]
(
[RSE_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSE_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSE_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSE_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSE_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSE_IDLink_XRS] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSE_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RSE_IDUser] [int] NULL,
[RSE_Type] [int] NULL,
[RSE_Value] [float] NULL,
[RSE_StatusActive] [bit] NULL,
[RSE_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityMDT] ADD CONSTRAINT [PK_iO_Product_SecurityMDT] PRIMARY KEY CLUSTERED  ([RSE_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityMDT', 'COLUMN', N'RSE_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityMDT', 'COLUMN', N'RSE_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityMDT', 'COLUMN', N'RSE_Ownership'
GO
