CREATE TABLE [dbo].[iO_DNB_ResponseMatchAddressDetails]
(
[DNBmad_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBmad_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_IDLink_DNBmp] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_SeqNumber] [bigint] NULL,
[DNBmad_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_Current] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_Prior] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_Mailing] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_UnitNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_StreetNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_Street] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_StreetType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_State] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmad_Postcode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseMatchAddressDetails] ADD CONSTRAINT [io_dnb_responsematchaddressdetailsPrimaryKey] PRIMARY KEY CLUSTERED  ([DNBmad_ID]) ON [PRIMARY]
GO
