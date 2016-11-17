CREATE TABLE [dbo].[iO_Client_CommissionModel]
(
[CCMmod_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCMmod_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_Brand_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_CashUpfront_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_CashTrailer_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_CashVolume_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_CreditUpfront_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_CreditTrailer_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_SeqNumber] [bigint] NULL,
[CCMmod_IDUser] [int] NULL,
[CCMmod_Type] [int] NULL,
[CCMmod_LodgementType] [int] NULL,
[CCMmod_Trailer] [float] NULL,
[CCMmod_Upfront] [float] NULL,
[CCMmod_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCMmod_IDLink_XFA] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CommissionModel] ADD CONSTRAINT [PK_iO_Client_CommissionModel] PRIMARY KEY CLUSTERED  ([CCMmod_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_CommissionModel] ON [dbo].[iO_Client_CommissionModel] ([CCMmod_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_CommissionModel_1] ON [dbo].[iO_Client_CommissionModel] ([CCMmod_IDLink_CMR], [CCMmod_IDLink_Brand_CMR], [CCMmod_IDLink_XRP]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
