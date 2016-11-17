CREATE TABLE [dbo].[iO_Product_ControlQuestions]
(
[RQnA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RQnA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RQnA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RQnA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RQnA_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RQnA_IDLink_XNT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RQnA_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RQnA_IDUser] [int] NULL,
[RQnA_Type] [int] NULL,
[RQnA_Question] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RQnA_Answer] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RQnA_AnswerYandN] [bit] NULL,
[RQnA_AnswerDate] [date] NULL,
[RQnA_AnswerFloat] [float] NULL,
[RQnA_AnswerText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RQnA_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlQuestions] ADD CONSTRAINT [PK_iO_Product_ControlQuestions] PRIMARY KEY CLUSTERED  ([RQnA_ID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlQuestions] ON [dbo].[iO_Product_ControlQuestions] ([RQnA_IDLink_RMR]) ON [PRIMARY]
GO
