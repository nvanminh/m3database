CREATE TABLE [dbo].[tblExploreCompanyEOD]
(
[CompanyID] [decimal] (18, 0) NULL,
[CreatedTS] [datetime] NULL,
[ModifiedTS] [datetime] NULL,
[CompanyName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartDate] [datetime] NULL,
[IsActive] [bit] NULL
) ON [PRIMARY]
GO
