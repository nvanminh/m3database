CREATE TABLE [dbo].[iO_Control_FCX_PropertyMortgage]
(
[XRPM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRPM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPM_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPM_Type] [int] NULL,
[XRPM_IDUser] [int] NULL,
[XRPM_SecurityValue] [int] NULL,
[XRPM_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPM_IDARMClassic] [int] NULL,
[XRPM_IDLink_XSCc] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FCX_PropertyMortgage] ADD CONSTRAINT [PK_iO_Control_FCX_PropertyMortgage] PRIMARY KEY CLUSTERED  ([XRPM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
