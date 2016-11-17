CREATE TABLE [dbo].[iO_Staging_Master]
(
[STM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STM_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STM_IDLink_Control] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STM_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STM_TimeStamp] [datetime] NULL,
[STM_SeqNumber] [bigint] NULL,
[STM_Type] [int] NULL,
[STM_FileName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Staging_Master] ADD CONSTRAINT [PK_iO_Staging_Master] PRIMARY KEY CLUSTERED  ([STM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
