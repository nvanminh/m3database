CREATE TABLE [dbo].[iO_ABN_MasterReference]
(
[ABmr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABmr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABmr_RequestTime] [datetime] NULL,
[ABmr_RequestXML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_ResponseXML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_RequestType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_MainSearchString] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_ContextClientID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_ContextProductID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_ContextLinkMasterID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_LinkAssociationTypeID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABmr_History] [bit] NULL,
[ABmr_Resp_DateRegisterLastUpdated] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_MasterReference] ADD CONSTRAINT [PK_iO_ABN_MasterReference] PRIMARY KEY CLUSTERED  ([ABmr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
