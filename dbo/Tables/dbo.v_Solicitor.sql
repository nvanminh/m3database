CREATE TABLE [dbo].[v_Solicitor]
(
[LoanNumber] [bigint] NULL,
[SolicitorName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Province] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fax] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
