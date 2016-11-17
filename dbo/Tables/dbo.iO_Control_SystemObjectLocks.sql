CREATE TABLE [dbo].[iO_Control_SystemObjectLocks]
(
[XSYSlck_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSlck_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSlck_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlck_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlck_IDLink_ActiveDirectory] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlck_ObjectType] [int] NULL,
[XSYSlck_IDLink_Key1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlck_IDLink_Key2] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlck_TimeStamp] [datetime] NULL,
[XSYSlck_Type] [int] NULL,
[XSYSlck_IDUser] [int] NULL,
[XSYSlck_SecurityValue] [int] NULL,
[XSYSlck_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlck_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemObjectLocks] ADD CONSTRAINT [PK_iO_Control_SystemObjectLocks] PRIMARY KEY CLUSTERED  ([XSYSlck_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemObjectLocks] ADD CONSTRAINT [IX_iO_Control_SystemObjectLocks_BothKeys] UNIQUE NONCLUSTERED  ([XSYSlck_IDLink_Key1], [XSYSlck_IDLink_Key2]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
