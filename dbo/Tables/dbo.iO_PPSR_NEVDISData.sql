CREATE TABLE [dbo].[iO_PPSR_NEVDISData]
(
[PPSn_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSn_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSn_IDLink_PPSm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PPSn_NEVDIS_EngineNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_ComplianceYearMonth] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_Jurisdiction] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_RegExpiryDate] [datetime] NULL,
[PPSn_NEVDIS_RegPlateNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_BodyType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_Colour] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_Make] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_ManufactureYear] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_Model] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_VehicleType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_Stolen] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSn_NEVDIS_WrittenOff] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_PPSR_NEVDISData] ADD CONSTRAINT [PK__iO_PPSR___69BFA37B199861DC] PRIMARY KEY CLUSTERED  ([PPSn_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
