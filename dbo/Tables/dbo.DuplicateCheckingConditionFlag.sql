CREATE TABLE [dbo].[DuplicateCheckingConditionFlag]
(
[Client_ID] [uniqueidentifier] NULL,
[ComparingClient_ID] [uniqueidentifier] NULL,
[CMR_SeqNumber] [bigint] NULL,
[ComparingCMR_SeqNumber] [bigint] NULL,
[ConditionFlag] [int] NULL
) ON [PRIMARY]
GO
