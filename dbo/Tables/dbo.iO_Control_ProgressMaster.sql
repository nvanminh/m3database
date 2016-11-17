CREATE TABLE [dbo].[iO_Control_ProgressMaster]
(
[XPR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPR_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPR_Type] [int] NULL,
[XPR_Mode] [int] NULL,
[XPR_IntArg1] [int] NULL,
[XPR_IntArg2] [int] NULL,
[XPR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProgressMaster] ADD CONSTRAINT [PK_iO_Control_ProgressMaster] PRIMARY KEY CLUSTERED  ([XPR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
