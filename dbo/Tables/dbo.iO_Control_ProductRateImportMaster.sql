CREATE TABLE [dbo].[iO_Control_ProductRateImportMaster]
(
[XRRim_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRim_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRim_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRim_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRim_EffectiveDate] [datetime] NULL,
[XRRim_ImportDate] [datetime] NULL,
[XRRim_IDLink_DMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductRateImportMaster] ADD CONSTRAINT [io_control_productrateimportmaster_PrimaryKey] PRIMARY KEY CLUSTERED  ([XRRim_ID]) ON [PRIMARY]
GO
