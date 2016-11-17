CREATE TABLE [dbo].[iO_Control_ProfilePasswordPolicy]
(
[XPFp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPFp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFp_IDLink_XPF] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFp_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFp_Type] [int] NULL,
[XPFp_IDUser] [int] NULL,
[XPFp_Properties] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFp_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProfilePasswordPolicy] ADD CONSTRAINT [PK_iO_Control_ProfilePasswordPolicy] PRIMARY KEY CLUSTERED  ([XPFp_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ProfilePasswordPolicy] ON [dbo].[iO_Control_ProfilePasswordPolicy] ([XPFp_IDLink_XPF]) ON [PRIMARY]
GO
