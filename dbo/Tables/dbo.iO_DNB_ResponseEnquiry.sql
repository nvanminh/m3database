CREATE TABLE [dbo].[iO_DNB_ResponseEnquiry]
(
[DNBe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_SeqNumber] [bigint] NULL,
[DNBe_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_Date] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_AccountTypeCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_AccountTypeDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_CreditObligationCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_CreditObligationDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_Organisation] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_UniqueCustomerReference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_Purpose] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBe_Amount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseEnquiry] ADD CONSTRAINT [PK_iO_DNB_ResponseEnquiry] PRIMARY KEY CLUSTERED  ([DNBe_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
