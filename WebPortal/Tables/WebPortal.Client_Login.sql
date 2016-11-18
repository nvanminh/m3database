CREATE TABLE [WebPortal].[Client_Login]
(
[CLO_ID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CLO_IDLink_CMR] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLO_UserName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLO_Password] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLO_Token_Timeout] [datetime] NULL,
[CLO_Token] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLO_Active] [smallint] NULL,
[CLO_DisplayBrand] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Client_Lo__CLO_D__1308BEAA] DEFAULT ('M3')
) ON [PRIMARY]
GO
ALTER TABLE [WebPortal].[Client_Login] ADD CONSTRAINT [PK_iO_CLO_ID] PRIMARY KEY CLUSTERED  ([CLO_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_Client] ON [WebPortal].[Client_Login] ([CLO_UserName], [CLO_DisplayBrand]) ON [PRIMARY]
GO
