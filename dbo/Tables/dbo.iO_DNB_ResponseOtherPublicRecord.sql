CREATE TABLE [dbo].[iO_DNB_ResponseOtherPublicRecord]
(
[DNBopr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBopr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_SeqNumber] [bigint] NULL,
[DNBopr_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_DateLodged] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_ActionTypeCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_ActionTypeDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_Creditor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_Court] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_Status] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_Amount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_PlaintiffNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_PlaintiffName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_DatePaid] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBopr_Comments] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseOtherPublicRecord] ADD CONSTRAINT [PK_iO_DNB_ResponseOtherPublicRecord] PRIMARY KEY CLUSTERED  ([DNBopr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
