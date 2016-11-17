CREATE TABLE [dbo].[v_ExploreUserAccount]
(
[UserID] [decimal] (18, 0) NULL,
[CreatedTS] [datetime] NULL,
[ModifiedTS] [datetime] NULL,
[AdminUserRole] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NULL
) ON [PRIMARY]
GO
