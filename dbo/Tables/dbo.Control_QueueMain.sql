CREATE TABLE [dbo].[Control_QueueMain]
(
[XQUm_ID] [int] NOT NULL,
[XQUm_DateC] [datetime] NULL,
[XQUm_DateF] [datetime] NULL,
[XQUm_Type] [int] NULL,
[XQUm_Status] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Control_QueueMain] ADD CONSTRAINT [PK_Control_QueueMain] PRIMARY KEY CLUSTERED  ([XQUm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
