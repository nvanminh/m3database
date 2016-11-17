CREATE TABLE [dbo].[DuplicatorClientDetail]
(
[ID] [uniqueidentifier] NOT NULL,
[DuplicatorClientInfoID] [uniqueidentifier] NOT NULL,
[Name] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OriginValue] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DuplicateValue] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
