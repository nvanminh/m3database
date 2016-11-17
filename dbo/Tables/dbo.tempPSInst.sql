CREATE TABLE [dbo].[tempPSInst]
(
[RPSD_IDLink_RMR] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InstalDue] [float] NOT NULL,
[tempPSInstPK] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tempPSInst] ADD CONSTRAINT [tempPSInst_PrimaryKey] PRIMARY KEY CLUSTERED  ([tempPSInstPK]) ON [PRIMARY]
GO
