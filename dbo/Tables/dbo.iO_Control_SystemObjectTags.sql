CREATE TABLE [dbo].[iO_Control_SystemObjectTags]
(
[XSYStag_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYStag_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYStag_IDLink_XVMtag] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYStag_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYStag_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYStag_IDLink_ActiveDirectory] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYStag_IDLink_Key1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYStag_IDLink_Key2] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYStag_IDLink_User] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYStag_TimeStamp] [datetime] NULL,
[XSYStag_ObjectType] [int] NULL,
[XSYStag_Type] [int] NULL,
[XSYStag_IDUser] [int] NULL,
[XSYStag_SecurityValue] [int] NULL,
[XSYStag_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYStag_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemObjectTags] ADD CONSTRAINT [PK_iO_Control_SystemObjectTags] PRIMARY KEY CLUSTERED  ([XSYStag_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_SystemObjectTags_83_1360059931__K11_K7_K3_K10_K6_1] ON [dbo].[iO_Control_SystemObjectTags] ([XSYStag_ObjectType], [XSYStag_IDLink_Key1], [XSYStag_IDLink_XVMtag], [XSYStag_TimeStamp], [XSYStag_IDLink_ActiveDirectory]) INCLUDE ([XSYStag_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
