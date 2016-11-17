CREATE TABLE [dbo].[iO_Client_CompanyBalanceSheet]
(
[CBScomp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBScomp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBScomp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBScomp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBScomp_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBScomp_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBScomp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[CBScomp_IDUser] [int] NULL,
[CBScomp_Type] [int] NULL,
[CBScomp_Year] [int] NULL,
[CBScomp_Month] [int] NULL,
[CBScomp_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBScomp_Value_Y1] [float] NULL,
[CBScomp_ValueVerified_Y1] [float] NULL,
[CBScomp_Value_Y2] [float] NULL,
[CBScomp_ValueVerified_Y2] [float] NULL,
[CBScomp_Value_Y3] [float] NULL,
[CBScomp_ValueVerified_Y3] [float] NULL,
[CBScomp_Value_M1] [float] NULL,
[CBScomp_ValueVerified_M1] [float] NULL,
[CBScomp_Value_M2] [float] NULL,
[CBScomp_ValueVerified_M2] [float] NULL,
[CBScomp_Value_M3] [float] NULL,
[CBScomp_ValueVerified_M3] [float] NULL,
[CBScomp_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CompanyBalanceSheet] ADD CONSTRAINT [PK_iO_Client_CompanyBalanceSheet] PRIMARY KEY CLUSTERED  ([CBScomp_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_CompanyBalanceSheet] ON [dbo].[iO_Client_CompanyBalanceSheet] ([CBScomp_IDLink_CMR]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
