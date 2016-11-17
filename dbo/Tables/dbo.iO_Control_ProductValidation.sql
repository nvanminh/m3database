CREATE TABLE [dbo].[iO_Control_ProductValidation]
(
[XRVa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRVa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVa_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVa_IDLink_XRU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVa_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVa_IDUser] [int] NULL,
[XRVa_IDOrder] [int] NULL,
[XRVa_Type] [int] NULL,
[XRVa_SecurityValue] [int] NULL,
[XRVa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductValidation] ADD CONSTRAINT [PK_iO_Control_ProductValidation] PRIMARY KEY CLUSTERED  ([XRVa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
