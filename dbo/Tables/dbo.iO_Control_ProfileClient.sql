CREATE TABLE [dbo].[iO_Control_ProfileClient]
(
[XPFc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPFc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFc_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFc_IDLink_XPF] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFc_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFc_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFc_Type] [int] NULL,
[XPFc_IDUser] [int] NULL,
[XPFc_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFc_SecurityValue] [int] NULL,
[XPFc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProfileClient] ADD CONSTRAINT [PK_iO_Control_ProfileClient] PRIMARY KEY CLUSTERED  ([XPFc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ProfileClient] ON [dbo].[iO_Control_ProfileClient] ([XPFc_IDLink_XPF]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
