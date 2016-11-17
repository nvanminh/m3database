CREATE TABLE [dbo].[iO_FCX_Enumerations]
(
[FCXenum_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXenum_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXenum_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXenum_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXenum_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[FCXenum_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXenum_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXenum_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXenum_IDLink_ARMnet] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_FCX_Enumerations] ADD CONSTRAINT [PK_FCX_Enumerations] PRIMARY KEY CLUSTERED  ([FCXenum_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_FCX_Enumerations_9_519724954__K9_K6_K7] ON [dbo].[iO_FCX_Enumerations] ([FCXenum_IDLink_ARMnet], [FCXenum_Name], [FCXenum_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_FCX_Enumerations_9_519724954__K6_K7_8_9] ON [dbo].[iO_FCX_Enumerations] ([FCXenum_Name], [FCXenum_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_FCX_Enumerations_9_519724954__K6_K8_K9_K7] ON [dbo].[iO_FCX_Enumerations] ([FCXenum_Name], [FCXenum_Description], [FCXenum_IDLink_ARMnet], [FCXenum_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_FCX_Enumerations_9_519724954__K6_K9_K8_K7] ON [dbo].[iO_FCX_Enumerations] ([FCXenum_Name], [FCXenum_IDLink_ARMnet], [FCXenum_Description], [FCXenum_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
