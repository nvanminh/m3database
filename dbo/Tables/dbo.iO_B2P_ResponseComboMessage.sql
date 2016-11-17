CREATE TABLE [dbo].[iO_B2P_ResponseComboMessage]
(
[PEre_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PEre_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_IDLink_PErc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_SeqNumber] [bigint] NULL,
[PEre_DisplayIndicator] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_Type] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_BorrowerID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_DelegationLevel] [int] NULL,
[PEre_LoanID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_MessageText] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_MessageNumber] [bigint] NULL,
[PEre_OverideDelegationLevel] [int] NULL,
[PEre_PolicyCategory] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_SecurityID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_Severity] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEre_IncomeSourceID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_ResponseComboMessage] ADD CONSTRAINT [PK_iO_B2P_ResponseComboMessage] PRIMARY KEY CLUSTERED  ([PEre_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
