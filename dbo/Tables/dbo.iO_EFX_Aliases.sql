CREATE TABLE [dbo].[iO_EFX_Aliases]
(
[EFXAlias_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFXAlias_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_Type] [int] NULL,
[EFXAlias_IDUser] [int] NULL,
[EFXAlias_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[EFXAlias_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_OtherName_code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_OtherName_description] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_LastName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_FirstName] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_MiddleName] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_Suffix_code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_Suffix_description] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_SpouseName] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXAlias_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_EFX_Aliases] ADD CONSTRAINT [io_efx_aliases_PrimaryKey] PRIMARY KEY CLUSTERED  ([EFXAlias_ID]) ON [PRIMARY]
GO
