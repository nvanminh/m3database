CREATE TABLE [dbo].[iO_Client_ControlCheckList]
(
[CCCl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCCl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCCl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCCl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCCl_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCCl_IDLink_XNT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCCl_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CCCl_IDUser] [int] NULL,
[CCCl_Type] [int] NULL,
[CCCl_OK] [int] NULL,
[CCCl_Value] [float] NULL,
[CCCl_Date] [datetime] NULL,
[CCCl_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCCl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_ControlCheckList] ADD CONSTRAINT [PK_iO_Client_ControlCheckList] PRIMARY KEY CLUSTERED  ([CCCl_ID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_ControlCheckList] ON [dbo].[iO_Client_ControlCheckList] ([CCCl_IDLink_CMR]) ON [PRIMARY]
GO
