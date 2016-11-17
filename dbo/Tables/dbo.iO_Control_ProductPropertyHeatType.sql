CREATE TABLE [dbo].[iO_Control_ProductPropertyHeatType]
(
[XRTht_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTht_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTht_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTht_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTht_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTht_IDLink_XSCc] [int] NULL,
[XRTht_Type] [int] NULL,
[XRTht_IDUser] [int] NULL,
[XRTht_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTht_SecurityValue] [int] NULL,
[XRTht_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTht_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyHeatType] ADD CONSTRAINT [PK_iO_Control_ProductPropertyHeatType] PRIMARY KEY CLUSTERED  ([XRTht_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
