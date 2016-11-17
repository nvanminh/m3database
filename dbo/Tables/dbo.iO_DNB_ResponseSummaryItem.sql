CREATE TABLE [dbo].[iO_DNB_ResponseSummaryItem]
(
[DNBsi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBsi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsi_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsi_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsi_SeqNumber] [bigint] NULL,
[DNBsi_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsi_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsi_Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsi_Count] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsi_Amount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseSummaryItem] ADD CONSTRAINT [PK_iO_DNB_Response_SummaryItem] PRIMARY KEY CLUSTERED  ([DNBsi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
