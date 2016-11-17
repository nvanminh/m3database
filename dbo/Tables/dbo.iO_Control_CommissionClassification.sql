CREATE TABLE [dbo].[iO_Control_CommissionClassification]
(
[XCOMc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCOMc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMc_IDLink_XCOMm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMc_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMc_Type] [int] NULL,
[XCOMc_IDUser] [int] NULL,
[XCOMc_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCOMc_SecurityValue] [int] NULL,
[XCOMc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_CommissionClassification] ADD CONSTRAINT [PK_iO_Control_CommissionClassification] PRIMARY KEY CLUSTERED  ([XCOMc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_CommissionClassification] ON [dbo].[iO_Control_CommissionClassification] ([XCOMc_IDLink_XCOMm]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
