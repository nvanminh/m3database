CREATE TABLE [dbo].[iO_Control_RetentionInvestorSwitchProduct]
(
[XRIsp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRIsp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIsp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIsp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIsp_Date_Modified] [datetime] NULL,
[XRIsp_ExcludeFlag] [bit] NULL,
[XRIsp_IDLink_XRIs] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIsp_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_RetentionInvestorSwitchProduct] ADD CONSTRAINT [PK_iO_Control_RetentionInvestorSwitchProduct] PRIMARY KEY CLUSTERED  ([XRIsp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
