CREATE TABLE [WebPortal].[IO_Control_Marketing_Reference]
(
[XMR_ID] [varchar] (42) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XMR_Ref] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMR_LeadSource] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMR_LeadGroup] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMR_LeadStatus] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebPortal].[IO_Control_Marketing_Reference] ADD CONSTRAINT [PK_IO_Control_Marketing_Reference] PRIMARY KEY CLUSTERED  ([XMR_ID]) ON [PRIMARY]
GO
