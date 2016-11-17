CREATE TABLE [dbo].[iO_Events_MasterReference]
(
[EMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMR_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMR_IDLink_XDT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMR_IDLink_XNT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMR_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMR_SeqNumber] [bigint] NULL,
[EMR_Type] [int] NULL,
[EMR_IDUser] [int] NULL,
[EMR_LeadsTotal] [int] NULL,
[EMR_LeadsMQLs] [int] NULL,
[EMR_LeadsSQLs] [int] NULL,
[EMR_LeadsDeals] [int] NULL,
[EMR_Budget] [float] NULL,
[EMR_AvgDealSize] [float] NULL,
[EMR_GenerationSource] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Events_MasterReference] ADD CONSTRAINT [PK_iO_Events_MasterReference] PRIMARY KEY CLUSTERED  ([EMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Events_MasterReference] ON [dbo].[iO_Events_MasterReference] ([EMR_IDLink_XLK]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
