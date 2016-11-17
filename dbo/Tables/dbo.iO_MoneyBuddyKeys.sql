CREATE TABLE [dbo].[iO_MoneyBuddyKeys]
(
[MBBS_ID] [int] NOT NULL IDENTITY(1, 1),
[MBBS_MID] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MBBS_CID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MBBS_Key] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MBBS_Brand] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_MoneyBuddyKeys] ADD CONSTRAINT [PK_iO_MoneyBuddyKeys] PRIMARY KEY CLUSTERED  ([MBBS_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_MoneyBuddyKeys] ADD CONSTRAINT [iO_MoneyBuddyKeys_CID] FOREIGN KEY ([MBBS_CID]) REFERENCES [dbo].[iO_Client_MasterReference] ([CMR_ID])
GO
