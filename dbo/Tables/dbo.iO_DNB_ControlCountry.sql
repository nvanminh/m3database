CREATE TABLE [dbo].[iO_DNB_ControlCountry]
(
[DNBcc_ID] [bigint] NOT NULL,
[DNBcc_Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBcc_Country] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBcc_Link_SysCountry] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ControlCountry] ADD CONSTRAINT [PK_iO_DNB_ControlCountry] PRIMARY KEY CLUSTERED  ([DNBcc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
