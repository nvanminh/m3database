CREATE TABLE [WebPortal].[RedrawOtherLoans]
(
[ROL_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ROL_LinkID_RDW] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ROL_LinkID_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ROL_CompanyName] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ROL_RepaymentAmount] [float] NOT NULL,
[ROL_RepaymentFrequency] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ROL_NumberOfRepayment] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebPortal].[RedrawOtherLoans] ADD CONSTRAINT [PK_RedrawOtherLoans] PRIMARY KEY CLUSTERED  ([ROL_ID]) ON [PRIMARY]
GO
