CREATE TABLE [dbo].[tblExploreOriginatorEOD]
(
[OriginatorID] [decimal] (18, 0) NULL,
[CompanyID] [decimal] (18, 0) NULL,
[CreatedTS] [datetime] NULL,
[ModifiedTS] [datetime] NULL,
[FirstName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Prov] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Postal] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[email] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CompensationType] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RewardsAcctUsername] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RewardsAcctPwd] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RegionID] [decimal] (18, 0) NULL,
[IsActive] [bit] NULL
) ON [PRIMARY]
GO
