CREATE TABLE [dbo].[iO_Control_ClosingServiceMatrix]
(
[XCSM_Id] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCSM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSM_SeqNumber] [int] NULL,
[XCSM_IDLink_Brand] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSM_IDLink_Investor] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSM_IDLink_Province] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSM_IDLink_XRPu] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSM_FlagType] [int] NULL,
[XCSM_IDLink_ClosingAgent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSM_IDLink_ClosingSolicitor] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCSM_ClosingFee] [decimal] (18, 0) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClosingServiceMatrix] ADD CONSTRAINT [PK_iO_Control_ClosingServiceMatrix] PRIMARY KEY CLUSTERED  ([XCSM_Id]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
