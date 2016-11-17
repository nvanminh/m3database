CREATE TABLE [dbo].[iO_Security_PasswordHistory]
(
[SPH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SPH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SPH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPH_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPH_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPH_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SPH_Type] [int] NULL,
[SPH_IDUser] [int] NULL,
[SPH_PasswordHash] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SPH_PasswordChangedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Security_PasswordHistory] ADD CONSTRAINT [PK__iO_Secur__B6A6EC97F3D2BBE3] PRIMARY KEY CLUSTERED  ([SPH_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
