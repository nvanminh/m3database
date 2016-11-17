CREATE TABLE [dbo].[iO_Fraud_MatchDetail]
(
[FMD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FMD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_FMM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_XSYSft] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_SYSfm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_SeqNumber] [bigint] NULL,
[FMD_IDLink_LMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_RSPv] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_CED] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_CMRBlack] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMM_Type] [int] NULL,
[FMM_Name] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMM_AssociationDesc] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMM_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMD_IDLink_CAD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Fraud_MatchDetail] ADD CONSTRAINT [PK_iO_Fraud_MatchDetail] PRIMARY KEY CLUSTERED  ([FMD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
