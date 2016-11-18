CREATE TABLE [WebPortal].[Client_OffLogin]
(
[OML_ID] [int] NOT NULL IDENTITY(1, 1),
[OML_CMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OML_Token] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OML_IDLINK_Xsca] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OML_IDLINK_Xrp] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OML_Token_ExpiredDate] [datetime] NULL,
[OML_Token_IsActive] [bit] NULL,
[OML_MaxAmount] [float] NULL,
[OML_Ref] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OML_SubIDa] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OML_SubIDb] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OML_SubIDc] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OML_SubIDd] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebPortal].[Client_OffLogin] ADD CONSTRAINT [PK_WebPortal.Client_OffLogin] PRIMARY KEY CLUSTERED  ([OML_ID]) ON [PRIMARY]
GO
