CREATE TABLE [dbo].[iO_DNB_ResponseSummons]
(
[DNBs_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBs_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_SeqNumber] [bigint] NULL,
[DNBs_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_DateLodged] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_ActionTypeCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_ActionTypeDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_Creditor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_Status] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_Amount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_PlaintiffNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_PlaintiffName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_DatePaid] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBs_Comments] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseSummons] ADD CONSTRAINT [PK_iO_DNB_ResponseSummons] PRIMARY KEY CLUSTERED  ([DNBs_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
