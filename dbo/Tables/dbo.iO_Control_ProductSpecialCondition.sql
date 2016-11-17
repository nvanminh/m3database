CREATE TABLE [dbo].[iO_Control_ProductSpecialCondition]
(
[XRSc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRSc_Detail] [varchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRSc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRSc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRSc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRSc_Type] [int] NULL,
[XRSc_IDUser] [int] NULL,
[XRSc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductSpecialCondition] ADD CONSTRAINT [PK_iO_Control_ProductConditions] PRIMARY KEY CLUSTERED  ([XRSc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductSpecialCondition', 'COLUMN', N'XRSc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductSpecialCondition', 'COLUMN', N'XRSc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductSpecialCondition', 'COLUMN', N'XRSc_Ownership'
GO
