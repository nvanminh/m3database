CREATE TABLE [dbo].[iO_Product_ArrearsMaster]
(
[RAM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RAM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAM_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAM_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RAM_Type] [int] NULL,
[RAM_IDUser] [int] NULL,
[RAM_DateCreated] [datetime] NULL,
[RAM_DateEffective] [datetime] NULL,
[RAM_CurrentArrearsBal] [float] NULL,
[RAM_DaysLate] [int] NULL,
[RAM_FuturePayments_Current] [float] NULL,
[RAM_FuturePayments_Future] [float] NULL,
[RAM_FutureCharges_Future] [float] NULL,
[RAM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ArrearsMaster] ADD CONSTRAINT [PK_iO_Product_ArrearsMaster] PRIMARY KEY CLUSTERED  ([RAM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ArrearsMaster', 'COLUMN', N'RAM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ArrearsMaster', 'COLUMN', N'RAM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ArrearsMaster', 'COLUMN', N'RAM_Ownership'
GO
