CREATE TABLE [dbo].[tempDaysAgeing]
(
[RMR_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AgeDays] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ageing] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tempDaysAgeingPK] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tempDaysAgeing] ADD CONSTRAINT [tempDaysAgeing_PrimaryKey] PRIMARY KEY CLUSTERED  ([tempDaysAgeingPK]) ON [PRIMARY]
GO
