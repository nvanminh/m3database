CREATE TABLE [dbo].[iO_DNB_ControlCountryOfBirth]
(
[DNBccb_ID] [bigint] NOT NULL,
[DNBccb_Country] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBccb_Link_SysCountry] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ControlCountryOfBirth] ADD CONSTRAINT [PK_iO_DNB_ControlCountryOfBirth] PRIMARY KEY CLUSTERED  ([DNBccb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
