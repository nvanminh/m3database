CREATE TABLE [dbo].[rmrtemp]
(
[RMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_RMRParent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_Parent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_XSYSct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_XSYSlt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_SeqNumber] [bigint] NULL,
[RMR_SeqGroup] [int] NULL,
[RMR_IDUser] [int] NULL,
[RMR_Type] [int] NULL,
[RMR_SecurityValue] [int] NULL,
[RMR_SecurityLock] [bit] NULL,
[RMR_EODDate] [datetime] NULL,
[RMR_Child] [bit] NULL,
[RMR_RunStatus] [int] NULL,
[RMR_BrokerLinked] [int] NULL,
[RMR_Action_PEGA] [bit] NULL,
[RMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_SplitType] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
