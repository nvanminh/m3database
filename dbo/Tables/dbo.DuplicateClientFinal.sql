CREATE TABLE [dbo].[DuplicateClientFinal]
(
[Root_Client_SeqNum] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DuplicateList] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HasFunded] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
