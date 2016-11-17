CREATE TABLE [dbo].[iO_Control_StandardChargeTermDetail]
(
[XSCTd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSCTd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTd_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTd_IDLink_XSCTm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTd_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTd_Type] [int] NULL,
[XSCTd_IDUser] [int] NULL,
[XSCTd_IDRow] [int] NULL,
[XSCTd_IDColumn] [int] NULL,
[XSCTd_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTd_DateTransaction] [datetime] NULL,
[XSCTd_Location] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTd_DateEffective] [datetime] NULL,
[XSCTd_DataText] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCTd_DataNumber] [float] NULL,
[XSCTd_DataDate] [datetime] NULL,
[XSCTd_SecurityValue] [int] NULL,
[XSCTd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_StandardChargeTermDetail] ADD CONSTRAINT [PK_iO_Control_StandardChargeTermDetail] PRIMARY KEY CLUSTERED  ([XSCTd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_StandardChargeTermDetail] ON [dbo].[iO_Control_StandardChargeTermDetail] ([XSCTd_IDLink_XSCTm]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
