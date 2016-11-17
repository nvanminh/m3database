CREATE TABLE [dbo].[iO_Control_ServiceCallSchemas]
(
[XSCS_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSCS_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCS_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCS_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCS_IDLink_XSCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCS_Type] [int] NULL,
[XSCS_Use] [bit] NULL,
[XSCS_FileName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCS_BaseFile] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCS_Base64Data] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ServiceCallSchemas] ADD CONSTRAINT [PK_iO_Control_ServiceCallSchemas] PRIMARY KEY CLUSTERED  ([XSCS_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
