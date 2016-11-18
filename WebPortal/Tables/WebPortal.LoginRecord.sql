CREATE TABLE [WebPortal].[LoginRecord]
(
[LoginRecordID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[IPAddress] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UserName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LoginSuccess] [bit] NOT NULL,
[ClientID] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoginDate] [datetime] NOT NULL,
[StatusCode] [smallint] NOT NULL,
[DisplayBrand] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__LoginReco__Displ__1B9E04AB] DEFAULT ('M3')
) ON [PRIMARY]
GO
ALTER TABLE [WebPortal].[LoginRecord] ADD CONSTRAINT [LoginRecordID] PRIMARY KEY CLUSTERED  ([LoginRecordID]) ON [PRIMARY]
GO
