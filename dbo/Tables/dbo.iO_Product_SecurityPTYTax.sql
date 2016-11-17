CREATE TABLE [dbo].[iO_Product_SecurityPTYTax]
(
[RSPt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_IDLink_CMR_TaxingAuthority] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_IDLink_CMR_Contact] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_RecordID] [int] NULL,
[RSPt_SeqNumber] [int] NULL,
[RSPt_ParcelNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_Amount] [float] NULL,
[RSPt_DateExpire] [datetime] NULL,
[RSPt_AssessedValue] [float] NULL,
[RSPt_Paid] [bit] NULL,
[RSPt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_IDUser] [int] NULL,
[RSPt_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_SendNoticeBefore] [int] NULL,
[RSPt_PaidBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPt_HoldbackAmount] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityPTYTax] ADD CONSTRAINT [PK_iO_Product_SecurityPTYTax] PRIMARY KEY CLUSTERED  ([RSPt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
