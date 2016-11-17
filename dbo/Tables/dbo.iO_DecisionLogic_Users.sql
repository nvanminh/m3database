CREATE TABLE [dbo].[iO_DecisionLogic_Users]
(
[dlu_id] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[dlu_idlink_user] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dld_Siteuserguid] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DecisionLogic_Users] ADD CONSTRAINT [io_decisionlogic_users_PrimaryKey] PRIMARY KEY CLUSTERED  ([dlu_id]) ON [PRIMARY]
GO
