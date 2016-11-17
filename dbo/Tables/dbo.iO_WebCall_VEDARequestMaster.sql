CREATE TABLE [dbo].[iO_WebCall_VEDARequestMaster]
(
[WCVm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WCVm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVm_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVm_IDLink_TFR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[WCVm_Date] [datetime] NULL,
[WCVm_CreditReview] [bit] NULL CONSTRAINT [DF_iO_WebCall_VEDARequestMaster_WCVm_CreditReview] DEFAULT ((0)),
[WCVm_AccountType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WCVm_EnquiryAmount] [decimal] (18, 2) NULL,
[WCVm_Comment] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_WebCall_VEDARequestMaster] ADD CONSTRAINT [PK_iO_WebCall_VEDARequestMaster] PRIMARY KEY CLUSTERED  ([WCVm_ID]) ON [PRIMARY]
GO
