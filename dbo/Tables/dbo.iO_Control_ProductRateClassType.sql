CREATE TABLE [dbo].[iO_Control_ProductRateClassType]
(
[XRRct_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRct_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRct_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRct_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRct_IDLink_XSCc] [int] NULL,
[XRRct_Type] [int] NULL,
[XRRct_IDUser] [int] NULL,
[XRRct_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRct_SecurityValue] [int] NULL,
[XRRct_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductRateClassType] ADD CONSTRAINT [PK_iO_Control_ProductRateType] PRIMARY KEY CLUSTERED  ([XRRct_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
