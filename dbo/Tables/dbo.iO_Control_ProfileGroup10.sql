CREATE TABLE [dbo].[iO_Control_ProfileGroup10]
(
[XPFg_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPFg_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_IDLink_XPF] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_IDLink_XFRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_IDUser] [int] NULL,
[XPFg_Type] [int] NULL,
[XPFg_DisplayNumber] [int] NULL,
[XPFg_Name] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_UseWorkFlow] [bit] NULL,
[XPFg_TabHeading] [int] NULL,
[XPFg_CheckFor] [int] NULL,
[XPFg_DisplayName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFg_ReadOnly] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProfileGroup10] ADD CONSTRAINT [io_control_profilegroup10_PrimaryKey] PRIMARY KEY CLUSTERED  ([XPFg_ID]) ON [PRIMARY]
GO
