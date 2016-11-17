CREATE TABLE [dbo].[iO_Product_ControlSpecialCondition]
(
[RCSc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCSc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_IDLink_XDT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_IDLink_XNT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_IDLink_XRSc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCSc_IDUser] [int] NULL,
[RCSc_Type] [int] NULL,
[RCSc_Exclude] [bit] NULL,
[RCSc_Required] [bit] NULL,
[RCSc_Waived] [bit] NULL,
[RCSc_Satisfied] [bit] NULL,
[RCSc_DateSatisfied] [datetime] NULL,
[RCSc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_Flag] [int] NULL,
[RCSc_Title] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_IDLink_XNTcl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCSc_Trackable] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlSpecialCondition] ADD CONSTRAINT [PK_iO_Product_ControlSpecialCondition] PRIMARY KEY CLUSTERED  ([RCSc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlSpecialCondition] ON [dbo].[iO_Product_ControlSpecialCondition] ([RCSc_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlSpecialCondition', 'COLUMN', N'RCSc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlSpecialCondition', 'COLUMN', N'RCSc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlSpecialCondition', 'COLUMN', N'RCSc_Ownership'
GO
