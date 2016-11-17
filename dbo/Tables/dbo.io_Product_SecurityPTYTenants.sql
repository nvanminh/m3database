CREATE TABLE [dbo].[io_Product_SecurityPTYTenants]
(
[RSPt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_SeqNumber] [bigint] NULL,
[RSPt_UnitID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_Address] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_County] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_CountryName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_UnitType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_IDLink_UnitSector_RSD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_UnitDescription] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_TenancySourceDate] [datetime] NULL,
[RSPt_Vacant] [bit] NULL,
[RSPt_IDLink_TenantName_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_UnitArea] [float] NULL,
[RSPt_IDLink_AreaUnitMeasure_RSD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_Note] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[io_Product_SecurityPTYTenants] ADD CONSTRAINT [PK_iO_Product_SecurityPTYTenants] PRIMARY KEY CLUSTERED  ([RSPt_ID]) ON [PRIMARY]
GO
