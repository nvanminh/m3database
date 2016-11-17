CREATE TABLE [dbo].[iO_Control_RetentionInvestorSwitchAssociations]
(
[XRIsa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRIsa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIsa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIsa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIsa_Date_Modified] [datetime] NULL,
[XRIsa_ExcludeFlag] [bit] NULL,
[XRIsa_IDLink_XRIs] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIsa_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_RetentionInvestorSwitchAssociations] ADD CONSTRAINT [PK_iO_Control_RetentionInvestorSwitchAssociations] PRIMARY KEY CLUSTERED  ([XRIsa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
