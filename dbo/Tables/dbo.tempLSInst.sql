CREATE TABLE [dbo].[tempLSInst]
(
[rlp_idlink_rmr] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Inst_Due] [float] NULL,
[tempLSInstPK] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tempLSInst] ADD CONSTRAINT [tempLSInst_PrimaryKey] PRIMARY KEY CLUSTERED  ([tempLSInstPK]) ON [PRIMARY]
GO
