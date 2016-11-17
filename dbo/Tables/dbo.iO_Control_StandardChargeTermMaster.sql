CREATE TABLE [dbo].[iO_Control_StandardChargeTermMaster]
(
[XSCTm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSCTm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_IDLink_XSCc] [int] NULL,
[XSCTm_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_IDLink_Level] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_Type] [int] NULL,
[XSCTm_IDUser] [int] NULL,
[XSCTm_IDFilingNumber] [int] NULL,
[XSCTm_IDFilingText] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_DateStart] [datetime] NULL,
[XSCTm_DateEffective] [datetime] NULL,
[XSCTm_DateEnd] [datetime] NULL,
[XSCTm_SecurityValue] [int] NULL,
[XSCTm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_IDLink_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTm_PrepaymentPrivilege] [float] NULL,
[XSCTm_PaymentIncrease] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_StandardChargeTermMaster] ADD CONSTRAINT [PK_iO_Control_StandardChargeTermMaster] PRIMARY KEY CLUSTERED  ([XSCTm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
