CREATE TABLE [dbo].[iO_Control_RetentionInvestorSwitch]
(
[XRIs_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRIs_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIs_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIs_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIs_Date_Modified] [datetime] NULL,
[XRIs_IDLink_CMR_ExistingInvestor] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIs_IDLink_CMR_ExistingMortgageInsurer] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIs_NewDealIndicator] [bit] NULL,
[XRIs_PenaltyIndicator] [bit] NULL,
[XRIs_IDLink_CMR_NewMortgageInsurer] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIs_IDLink_XFA_MiType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIs_IDLink_XRU_InvestorPlan] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_RetentionInvestorSwitch] ADD CONSTRAINT [PK_iO_Control_RetentionInvestorSwitch] PRIMARY KEY CLUSTERED  ([XRIs_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
