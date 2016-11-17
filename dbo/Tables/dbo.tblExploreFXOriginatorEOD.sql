CREATE TABLE [dbo].[tblExploreFXOriginatorEOD]
(
[FXOriginatorID] [decimal] (18, 0) NULL,
[OriginatorID] [decimal] (18, 0) NULL,
[AltID] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedTS] [datetime] NULL,
[ModifiedTS] [datetime] NULL,
[SourceSystemType] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CompanyName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShortName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Prov] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Postal] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
