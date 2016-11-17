CREATE TABLE [dbo].[iO_Control_Rating]
(
[XRTg_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTg_OWnership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTg_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTg_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTg_IDLink_XSCc] [int] NULL,
[XRTg_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTg_Type] [int] NULL,
[XRTg_IDUser] [int] NULL,
[XRTg_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTg_SecurityValue] [int] NULL,
[XRTg_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_Rating] ADD CONSTRAINT [PK_iO_Control_Rating] PRIMARY KEY CLUSTERED  ([XRTg_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
