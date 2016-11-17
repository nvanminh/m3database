CREATE TABLE [dbo].[iO_Control_CommissionDetail]
(
[XCOMd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCOMd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_IDLink_XCOMm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_Type] [int] NULL,
[XCOMd_IDUser] [int] NULL,
[XCOMd_IDRow] [int] NULL,
[XCOMd_IDColumn] [int] NULL,
[XCOMd_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_DateTransaction] [datetime] NULL,
[XCOMd_Location] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_DateEffective] [datetime] NULL,
[XCOMd_DataText] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_DataNumber] [float] NULL,
[XCOMd_DataDate] [datetime] NULL,
[XCOMd_SecurityValue] [int] NULL,
[XCOMd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMd_IDControl] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_CommissionDetail] ADD CONSTRAINT [PK_iO_Control_CommissionDetail] PRIMARY KEY CLUSTERED  ([XCOMd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_CommissionDetail] ON [dbo].[iO_Control_CommissionDetail] ([XCOMd_IDLink_XCOMm]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
