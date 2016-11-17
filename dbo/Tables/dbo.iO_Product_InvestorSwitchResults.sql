CREATE TABLE [dbo].[iO_Product_InvestorSwitchResults]
(
[ISR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISR_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISR_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISR_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISR_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISR_CurrentInvestor] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISR_IDLink_XRIs] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISR_SelectedInvestor] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ISR_LTV] [real] NULL,
[ISR_Beacon] [real] NULL,
[ISR_NumberBrandProducts] [real] NULL,
[ISR_Note] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_InvestorSwitchResults] ADD CONSTRAINT [PK_iO_Product_InvestorSwitchResults] PRIMARY KEY CLUSTERED  ([ISR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
