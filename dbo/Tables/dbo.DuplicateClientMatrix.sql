CREATE TABLE [dbo].[DuplicateClientMatrix]
(
[CMR_SeqNumber] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dup_name_bob] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dup_dob_email] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dup_dob_mobile] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dup_dob_bank] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dup_name_email] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dup_name_mobile] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dup_name_bank] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dup_email_mobile] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Final_list] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
