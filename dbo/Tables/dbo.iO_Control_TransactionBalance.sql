CREATE TABLE [dbo].[iO_Control_TransactionBalance]
(
[XTRMb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRMb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMb_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMb_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMb_IDLink_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMb_Type] [int] NULL,
[XTRMb_IDUser] [int] NULL,
[XTRMb_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMb_Effect] [int] NULL,
[XTRMb_SecurityValue] [int] NULL,
[XTRMb_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TransactionBalance] ADD CONSTRAINT [PK_iO_Control_TransactionBalance] PRIMARY KEY CLUSTERED  ([XTRMb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_TransactionBalance] ON [dbo].[iO_Control_TransactionBalance] ([XTRMb_IDLink_XTRM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
