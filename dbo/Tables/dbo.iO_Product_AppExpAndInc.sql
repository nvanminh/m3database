CREATE TABLE [dbo].[iO_Product_AppExpAndInc]
(
[RLAe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLAe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLAe_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLAe_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLAe_IDLink_XLBo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_IDLink_XIN] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_IDLink_XFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLAe_Value] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_AppExpAndInc] ADD CONSTRAINT [PK_iO_Product_AppExpAndInc] PRIMARY KEY CLUSTERED  ([RLAe_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_AppExpAndInc] ON [dbo].[iO_Product_AppExpAndInc] ([RLAe_IDLink_RMR]) ON [PRIMARY]
GO
