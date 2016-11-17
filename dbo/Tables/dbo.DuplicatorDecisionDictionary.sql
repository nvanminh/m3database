CREATE TABLE [dbo].[DuplicatorDecisionDictionary]
(
[ConditionFlag] [int] NOT NULL,
[Decision] [tinyint] NULL CONSTRAINT [DF__Duplicato__Decis__60A75C0F] DEFAULT ((0))
) ON [PRIMARY]
GO
