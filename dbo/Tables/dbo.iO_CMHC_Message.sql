CREATE TABLE [dbo].[iO_CMHC_Message]
(
[CMHCRspMsg_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMHCRspMsg_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCRspMsg_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCRspMsg_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCRspMsg_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCRspMsg_SeqNumber] [bigint] NULL,
[CMHCRspMsg_IDLink_CMHCResp] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCRspMsg_MsgCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMHCRspMsg_MsgText] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_CMHC_Message] ADD CONSTRAINT [iO_CMHC_Message_PrimaryKey] PRIMARY KEY CLUSTERED  ([CMHCRspMsg_ID]) ON [PRIMARY]
GO
