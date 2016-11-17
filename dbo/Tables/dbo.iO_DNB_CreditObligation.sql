CREATE TABLE [dbo].[iO_DNB_CreditObligation]
(
[DNBco_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBco_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBco_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBco_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBco_SeqNumber] [bigint] NULL,
[DNBco_Code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBco_Detail] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_CreditObligation] ADD CONSTRAINT [PK_iO_DNB_CreditObligation] PRIMARY KEY CLUSTERED  ([DNBco_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
