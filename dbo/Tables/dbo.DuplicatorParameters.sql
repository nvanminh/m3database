CREATE TABLE [dbo].[DuplicatorParameters]
(
[ID] [uniqueidentifier] NOT NULL,
[ComparatorKey] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ComparatorWeight] [float] NULL CONSTRAINT [DF__Duplicato__Compa__6383C8BA] DEFAULT ((0)),
[Description] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__Duplicato__Descr__6477ECF3] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DuplicatorParameters] ADD CONSTRAINT [PK_dbo.DuplicatorParameters] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
