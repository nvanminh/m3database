CREATE TABLE [dbo].[iO_Client_ControlQuestions]
(
[CQnA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CQnA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CQnA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CQnA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CQnA_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CQnA_IDLink_XNT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CQnA_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CQnA_IDUser] [int] NULL,
[CQnA_Type] [int] NULL,
[CQnA_Question] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CQnA_Answer] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CQnA_AnswerYandN] [bit] NULL,
[CQnA_AnswerDate] [date] NULL,
[CQnA_AnswerFloat] [float] NULL,
[CQnA_AnswerText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CQnA_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_ControlQuestions] ADD CONSTRAINT [PK_iO_Client_ControlQuestions] PRIMARY KEY CLUSTERED  ([CQnA_ID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_ControlQuestions] ON [dbo].[iO_Client_ControlQuestions] ([CQnA_IDLink_CMR]) ON [PRIMARY]
GO
