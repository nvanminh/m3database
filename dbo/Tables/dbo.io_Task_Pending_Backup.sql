CREATE TABLE [dbo].[io_Task_Pending_Backup]
(
[KPD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KPD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KPD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDLink_Key] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDLink_XTKM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[KPD_IDUser] [int] NULL,
[KPD_Type] [int] NULL,
[KPD_ProcessOrder] [int] NULL,
[KPD_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_DateStart] [datetime] NULL,
[KPD_DateEnd] [datetime] NULL,
[KPD_DateNext] [datetime] NULL,
[KPD_DatePrev] [datetime] NULL,
[KPD_DayStart] [int] NULL,
[KPD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_SeqNo] [int] NULL,
[KPD_IDLink_CBD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_Data] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDlink_Class] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
