CREATE TABLE [dbo].[iO_Product_LoanPrincipalBalances]
(
[RPB_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPB_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPB_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPB_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPB_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPB_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RPB_Type] [int] NULL,
[RPB_IDUser] [int] NULL,
[RPB_FunderFeesBalance] [float] NULL,
[RPB_FunderInterestNYABalance] [float] NULL,
[RPB_FunderPrincipalBalance] [float] NULL,
[RPB_DateC] [datetime] NULL,
[RPB_DateE] [datetime] NULL,
[RPB_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanPrincipalBalances] ADD CONSTRAINT [PK_iO_Product_LoanPrincipalBalances] PRIMARY KEY CLUSTERED  ([RPB_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
