CREATE TABLE [dbo].[iO_Control_ProductPropertyRentalOffset]
(
[XRTro_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTro_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTro_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTro_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTro_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTro_Type] [int] NULL,
[XRTro_IDUser] [int] NULL,
[XRTro_SecurityValue] [int] NULL,
[XRTro_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTro_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTro_IDARMclassic] [int] NULL,
[XRTro_IDLink_XSCc] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyRentalOffset] ADD CONSTRAINT [PK_iO_Control_ProductPropertyRentalOffset] PRIMARY KEY CLUSTERED  ([XRTro_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
