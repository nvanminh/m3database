CREATE TABLE [dbo].[iO_Client_CompanyIncomeStatement]
(
[CIScomp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CIScomp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CIScomp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIScomp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIScomp_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIScomp_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIScomp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[CIScomp_IDUser] [int] NULL,
[CIScomp_Type] [int] NULL,
[CIScomp_Year] [int] NULL,
[CIScomp_Month] [int] NULL,
[CIScomp_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CIScomp_Value_Y1] [float] NULL,
[CIScomp_ValueVerified_Y1] [float] NULL,
[CIScomp_Value_Y2] [float] NULL,
[CIScomp_ValueVerified_Y2] [float] NULL,
[CIScomp_Value_Y3] [float] NULL,
[CIScomp_ValueVerified_Y3] [float] NULL,
[CIScomp_Value_M1] [float] NULL,
[CIScomp_ValueVerified_M1] [float] NULL,
[CIScomp_Value_M2] [float] NULL,
[CIScomp_ValueVerified_M2] [float] NULL,
[CIScomp_Value_M3] [float] NULL,
[CIScomp_ValueVerified_M3] [float] NULL,
[CIScomp_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CompanyIncomeStatement] ADD CONSTRAINT [PK_iO_Client_CompanyIncomeStatement] PRIMARY KEY CLUSTERED  ([CIScomp_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_CompanyIncomeStatement] ON [dbo].[iO_Client_CompanyIncomeStatement] ([CIScomp_IDLink_CMR]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
