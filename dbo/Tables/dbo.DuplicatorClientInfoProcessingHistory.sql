CREATE TABLE [dbo].[DuplicatorClientInfoProcessingHistory]
(
[ID] [uniqueidentifier] NOT NULL,
[Process] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RunTime] [datetime] NULL,
[IsSuccess] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DuplicatorClientInfoProcessingHistory] ADD CONSTRAINT [PK_dbo.DuplicatorProcessingHistory] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
