CREATE TABLE [dbo].[iO_Control_ProductPropertyZone]
(
[XRTz_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTz_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTz_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTz_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTz_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTz_IDLink_XSCc] [int] NULL,
[XRTz_Type] [int] NULL,
[XRTz_IDUser] [int] NULL,
[XRTz_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTz_SecurityValue] [int] NULL,
[XRTz_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTz_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyZone] ADD CONSTRAINT [PK_iO_Control_ProductPropertyZone] PRIMARY KEY CLUSTERED  ([XRTz_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
