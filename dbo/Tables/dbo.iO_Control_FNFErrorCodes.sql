CREATE TABLE [dbo].[iO_Control_FNFErrorCodes]
(
[XFNF_Number] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFNF_Code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFNF_Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FNFErrorCodes] ADD CONSTRAINT [iO_Control_FNFErrorCodes_PrimaryKey] PRIMARY KEY CLUSTERED  ([XFNF_Number]) ON [PRIMARY]
GO
