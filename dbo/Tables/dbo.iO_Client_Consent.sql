CREATE TABLE [dbo].[iO_Client_Consent]
(
[POL_ID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[POL_IDLINK_CMR] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POL_IDLINK_RMR] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POL_TYPE] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POL_IP_ADDRESS] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POL_DATE_ACCEPTED] [datetime] NULL,
[POL_VERSION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POL_LINK] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POL_STATUS] [bit] NULL,
[POL_LAST_UPDATE] [datetime] NULL,
[POL_CHANGE_BY] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_Consent] ADD CONSTRAINT [PK_iO_Client_Consent] PRIMARY KEY CLUSTERED  ([POL_ID]) ON [PRIMARY]
GO
