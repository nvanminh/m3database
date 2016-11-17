CREATE TABLE [dbo].[io_GNW_Ack]
(
[GNWAck_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWAck_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWAck_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWAck_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWAck_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWAck_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWAck_SeqNumber] [bigint] NULL,
[GNWAck_LocalAppID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWAck_TransactionSubmitDateTime] [datetime] NULL,
[GNWAck_Status] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GNWAck_PushbackReceived] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
