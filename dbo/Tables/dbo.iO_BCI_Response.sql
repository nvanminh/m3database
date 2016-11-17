CREATE TABLE [dbo].[iO_BCI_Response]
(
[BCIr_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCIr_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIr_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIr_IDLink_RMR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIr_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIr_SeqNumber] [int] NULL,
[BCIr_ResponseDate] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIr_CorrelationID] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIr_ResponseStatus] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIr_ClientReference] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_BCI_Response] ADD CONSTRAINT [iO_BCI_Response_PrimaryKey] PRIMARY KEY CLUSTERED  ([BCIr_ID]) ON [PRIMARY]
GO
