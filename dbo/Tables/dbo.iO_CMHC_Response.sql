CREATE TABLE [dbo].[iO_CMHC_Response]
(
[CMHCResp_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMHCResp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCResp_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCResp_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCResp_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCResp_SeqNumber] [bigint] NULL,
[CMHCResp_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCResp_IDLink_CMHCrq] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCResp_Date] [datetime] NULL,
[CMHCResp_Status] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCResp_EverApproved] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCResp_EverLowRatio] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCResp_CMHCAccount] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCResp_IDLink_Lender] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_CMHC_Response] ADD CONSTRAINT [iO_CMHC_Response_PrimaryKey] PRIMARY KEY CLUSTERED  ([CMHCResp_ID]) ON [PRIMARY]
GO
