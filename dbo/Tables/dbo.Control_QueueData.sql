CREATE TABLE [dbo].[Control_QueueData]
(
[XQUd_ID] [int] NOT NULL,
[XQUd_IDProcess] [int] NULL,
[XQUd_Type] [int] NULL,
[XQUd_Status] [int] NULL,
[XQUd_Data] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XQUd_Message] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Control_QueueData] ADD CONSTRAINT [PK_Control_QueueData] PRIMARY KEY CLUSTERED  ([XQUd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
