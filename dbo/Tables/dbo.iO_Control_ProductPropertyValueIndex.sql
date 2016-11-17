CREATE TABLE [dbo].[iO_Control_ProductPropertyValueIndex]
(
[XRTvi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTvi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTvi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTvi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTvi_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTvi_Type] [int] NULL,
[XRTvi_IDUser] [int] NULL,
[XRTvi_SecurityValue] [int] NULL,
[XRTvi_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTvi_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTvi_IDARMclassic] [int] NULL,
[XRTvi_IDLink_XSCc] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyValueIndex] ADD CONSTRAINT [PK_iO_Control_ProductPropertyValueIndex] PRIMARY KEY CLUSTERED  ([XRTvi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
