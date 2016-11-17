CREATE TABLE [dbo].[iO_Control_StatusOutcomes]
(
[XSUoc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSUoc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSUoc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUoc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUoc_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUoc_IDLink_Step] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUoc_Type] [int] NULL,
[XSUoc_IDOrder] [int] NULL,
[XSUoc_IDUser] [int] NULL,
[XSUoc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUoc_Security] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_StatusOutcomes] ADD CONSTRAINT [PK_iO_Control_StatusOutcomes] PRIMARY KEY CLUSTERED  ([XSUoc_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
