CREATE TABLE [dbo].[iO_Product_ControlCheckList]
(
[RCCl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCCl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCl_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCl_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCl_IDLink_XNT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCl_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCCl_IDUser] [int] NULL,
[RCCl_Type] [int] NULL,
[RCCl_OK] [int] NULL,
[RCCl_Date] [datetime] NULL,
[RCCl_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCl_Value] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlCheckList] ADD CONSTRAINT [PK_iO_Product_ControlCheckList] PRIMARY KEY CLUSTERED  ([RCCl_ID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlCheckList_CMR] ON [dbo].[iO_Product_ControlCheckList] ([RCCl_IDLink_CMR]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlCheckList_RMR] ON [dbo].[iO_Product_ControlCheckList] ([RCCl_IDLink_RMR]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlCheckList_Both] ON [dbo].[iO_Product_ControlCheckList] ([RCCl_IDLink_RMR], [RCCl_IDLink_CMR]) ON [PRIMARY]
GO
