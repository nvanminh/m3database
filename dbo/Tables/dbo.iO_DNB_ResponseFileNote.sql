CREATE TABLE [dbo].[iO_DNB_ResponseFileNote]
(
[DNBfn_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBfn_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBfn_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBfn_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBfn_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBfn_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBfn_SeqNumber] [bigint] NULL,
[DNBfn_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBfn_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBfn_Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBfn_Date] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBfn_Text] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseFileNote] ADD CONSTRAINT [PK_iO_DNB_ResponseFileNote] PRIMARY KEY CLUSTERED  ([DNBfn_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
