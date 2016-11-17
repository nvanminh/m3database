CREATE TABLE [WebPortal].[ProductESign]
(
[RES_ID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RES_FirstName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RES_LastName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RES_DoB] [datetime] NOT NULL,
[RES_IPAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RES_TimeStamp] [datetime] NOT NULL,
[RES_IDLink_RMR] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RES_Ownership] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RES_CreatedOn] [datetime] NULL,
[RES_Version] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RES_LinkID_CMD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RES_LinkID_RWD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebPortal].[ProductESign] ADD CONSTRAINT [PK_ProductESign] PRIMARY KEY CLUSTERED  ([RES_ID]) ON [PRIMARY]
GO
