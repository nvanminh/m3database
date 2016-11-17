CREATE TABLE [dbo].[iO_Product_PaymentScheduleHistory]
(
[RPSH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPSH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSH_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSH_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSH_SeqNumber] [bigint] NULL,
[RPSH_Type] [int] NULL,
[RPSH_CreateDate] [datetime] NULL,
[RPSH_ScheduleType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSH_PaymentSchedule] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RPSH_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_PaymentScheduleHistory] ADD CONSTRAINT [PK_RPSH_ID] PRIMARY KEY CLUSTERED  ([RPSH_ID]) ON [PRIMARY]
GO
