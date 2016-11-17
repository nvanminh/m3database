CREATE TABLE [dbo].[iO_BCI_Errors]
(
[BCIe_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCIe_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIe_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIe_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIe_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIe_SeqNumber] [int] NULL,
[BCIe_ErrorDescription] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BCIe_ErrorType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_BCI_Errors] ADD CONSTRAINT [iO_BCI_Errors_PrimaryKey] PRIMARY KEY CLUSTERED  ([BCIe_ID]) ON [PRIMARY]
GO
