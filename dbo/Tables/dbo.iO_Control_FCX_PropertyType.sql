CREATE TABLE [dbo].[iO_Control_FCX_PropertyType]
(
[XRPT_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRPT_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPT_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPT_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPT_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPT_Type] [int] NULL,
[XRPT_IDUser] [int] NULL,
[XRPT_SecurityValue] [int] NULL,
[XRPT_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPT_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPT_IDARMClassic] [int] NULL,
[XRPT_IDLink_XSCc] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FCX_PropertyType] ADD CONSTRAINT [PK_iO_Control_FCX_PropertyType] PRIMARY KEY CLUSTERED  ([XRPT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
