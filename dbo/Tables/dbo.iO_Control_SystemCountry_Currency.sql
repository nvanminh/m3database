CREATE TABLE [dbo].[iO_Control_SystemCountry_Currency]
(
[XSYScy_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYScy_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScy_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScy_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScy_IDLink_XSYSct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScy_Type] [int] NULL,
[XSYScy_IDUser] [int] NULL,
[XSYScy_Date] [datetime] NULL,
[XSYScy_Values] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYScy_SecurityValue] [int] NULL,
[XSYScy_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemCountry_Currency] ADD CONSTRAINT [PK_iO_Control_SystemCountry_Currency] PRIMARY KEY CLUSTERED  ([XSYScy_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
