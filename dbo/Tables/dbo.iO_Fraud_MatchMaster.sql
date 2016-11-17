CREATE TABLE [dbo].[iO_Fraud_MatchMaster]
(
[FMM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FMM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMM_Type] [int] NULL,
[FMM_IDLink_Key1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMM_IDLink_Key2] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FMM_SeqNumber] [bigint] NULL,
[FMM_Date] [datetime] NULL,
[FMM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Fraud_MatchMaster] ADD CONSTRAINT [PK_iO_Fraud_MatchMaster] PRIMARY KEY CLUSTERED  ([FMM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
