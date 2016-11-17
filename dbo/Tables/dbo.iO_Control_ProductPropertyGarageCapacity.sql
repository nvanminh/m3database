CREATE TABLE [dbo].[iO_Control_ProductPropertyGarageCapacity]
(
[XRTgc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTgc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTgc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTgc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTgc_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTgc_IDLink_XSCc] [int] NULL,
[XRTgc_Type] [int] NULL,
[XRTgc_IDUser] [int] NULL,
[XRTgc_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTgc_SecurityValue] [int] NULL,
[XRTgc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTgc_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyGarageCapacity] ADD CONSTRAINT [PK_iO_Control_ProductPropertyGarageCapacity] PRIMARY KEY CLUSTERED  ([XRTgc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
