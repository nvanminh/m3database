CREATE TABLE [dbo].[io_link_masterreference_backup]
(
[LMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_XSC_lnk] [int] NULL,
[LMR_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_Code_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_Association] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_CreatedBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_ModifiedBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[LMR_Type] [int] NULL,
[LMR_IDUser] [int] NULL,
[LMR_Date_Modified] [datetime] NULL,
[LMR_ReceiveNotification] [bit] NULL,
[LMR_DeleteFlag] [bit] NULL,
[LMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_ReceiveStatement] [bit] NULL,
[LMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
