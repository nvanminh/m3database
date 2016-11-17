CREATE TABLE [dbo].[iO_Product_ServiceExcelCounts]
(
[RSEC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSEC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSEC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSEC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSEC_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSEC_IDLink_Parent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSEC_SeqNumber] [bigint] NULL,
[RSEC_Application] [bit] NULL,
[RSEC_ApplicationDate] [datetime] NULL,
[RSEC_OtherActionDate] [datetime] NULL,
[RSEC_Funded] [bit] NULL,
[RSEC_FundedAmount] [float] NULL,
[RSEC_Collapsed] [bit] NULL,
[RSEC_CollapsedAmount] [float] NULL,
[RSEC_WithDrawn] [bit] NULL,
[RSEC_WithDrawnAmount] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ServiceExcelCounts] ADD CONSTRAINT [PK_iO_Product_ServiceExcelCounts] PRIMARY KEY CLUSTERED  ([RSEC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
