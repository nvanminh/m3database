CREATE TABLE [dbo].[iO_Control_ProductPropertyWater]
(
[XRTw_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTw_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTw_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTw_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTw_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTw_Type] [int] NULL,
[XRTw_IDUser] [int] NULL,
[XRTw_SecurityValue] [int] NULL,
[XRTw_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTw_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTw_IDARMclassic] [int] NULL,
[XRTw_IDLink_XSCc] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyWater] ADD CONSTRAINT [PK_iO_Control_ProductPropertyWater] PRIMARY KEY CLUSTERED  ([XRTw_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
