CREATE TABLE [dbo].[iO_Product_CommissionHistory]
(
[RCMH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCMH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCMH_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMH_DateStartPeriod] [datetime] NULL,
[RCMH_DateEndPeriod] [datetime] NULL,
[RCMH_DateRun] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_CommissionHistory] ADD CONSTRAINT [PK_iO_Product_CommissionHistory] PRIMARY KEY CLUSTERED  ([RCMH_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
