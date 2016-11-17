CREATE TABLE [dbo].[DuplicatorClientInfo]
(
[ID] [uniqueidentifier] NOT NULL,
[Client_SeqNum] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Duplicate_Client_SeqNum] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Root_Client_SeqNum] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsUpdated] [bit] NULL,
[HasFunded] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
