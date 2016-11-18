CREATE TABLE [dbo].[iO_System_NumberingQueue]
(
[SYSnq_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSnq_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSnq_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSnq_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSnq_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSnq_Type] [int] NULL,
[SYSnq_IDUser] [int] NULL,
[SYSnq_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSnq_Machine] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSnq_Table] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSnq_IDColumn] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSnq_RequestedNumber] [int] NULL,
[SYSnq_NumberDescription] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSnq_LastRequestTime] [datetime] NULL,
[SYSnq_FailureReason] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_NumberingQueue] ADD CONSTRAINT [PK__iO_Syste__01A149EDB7078D14] PRIMARY KEY CLUSTERED  ([SYSnq_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
