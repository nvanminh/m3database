CREATE TABLE [dbo].[iO_Link_AssociationHistory]
(
[LAH_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LAH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LAH_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LAH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LAH_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LAH_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LAH_IDLink_Association] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LAH_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[LAH_DateEnter] [datetime] NULL,
[LAH_DateLeave] [datetime] NULL,
[LAH_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Link_AssociationHistory] ADD CONSTRAINT [io_link_associationhistory_PrimaryKey] PRIMARY KEY CLUSTERED  ([LAH_ID]) ON [PRIMARY]
GO
