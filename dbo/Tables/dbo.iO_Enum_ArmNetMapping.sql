CREATE TABLE [dbo].[iO_Enum_ArmNetMapping]
(
[ENam_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENam_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ENam_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ENam_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ENam_IDLink_ENum] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enam_ArmNetValue] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Enum_ArmNetMapping] ADD CONSTRAINT [io_enum_armnetmapping_PrimaryKey] PRIMARY KEY CLUSTERED  ([ENam_ID]) ON [PRIMARY]
GO
