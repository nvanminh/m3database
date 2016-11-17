CREATE TABLE [dbo].[iO_B2P_MasterReference]
(
[PEmr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PEmr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEmr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEmr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEmr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PEmr_RequestTime] [datetime] NULL,
[PEmr_RequestXML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEmr_ResponseXML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEmr_RequestType] [int] NULL,
[PEmr_RequestProductID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEmr_RequestEffectiveDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_MasterReference] ADD CONSTRAINT [PK_iO_B2P_MasterReference] PRIMARY KEY CLUSTERED  ([PEmr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
