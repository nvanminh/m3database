CREATE TABLE [dbo].[iO_Product_ArrearsBreakdown]
(
[RAB_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RAB_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAB_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAB_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAB_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RAB_Order] [int] NULL,
[RAB_IDLink_RAM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAB_Days] [int] NULL,
[RAB_EndOfPeriodDate] [datetime] NULL,
[RAB_Value] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ArrearsBreakdown] ADD CONSTRAINT [PK_iO_Product_ArrearsBreakdown] PRIMARY KEY CLUSTERED  ([RAB_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ArrearsBreakdown', 'COLUMN', N'RAB_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ArrearsBreakdown', 'COLUMN', N'RAB_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ArrearsBreakdown', 'COLUMN', N'RAB_Ownership'
GO
