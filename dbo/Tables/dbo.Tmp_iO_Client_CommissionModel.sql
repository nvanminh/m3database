CREATE TABLE [dbo].[Tmp_iO_Client_CommissionModel]
(
[CCMmod_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_Brand_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCM_SeqNumber] [bigint] NULL,
[CCM_IDUser] [int] NULL,
[CCM_Type] [int] NULL,
[CCM_LodgementType] [int] NULL,
[CCM_Trailer] [float] NULL,
[CCM_Upfront] [float] NULL,
[CCM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
