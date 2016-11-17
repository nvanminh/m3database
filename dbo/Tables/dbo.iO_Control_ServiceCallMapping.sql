CREATE TABLE [dbo].[iO_Control_ServiceCallMapping]
(
[XSCMp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSCMp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCMp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCMp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCMp_IDLink_XSCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCMp_IDLink_Class] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCMp_IDLink_Type] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCMp_IDLink_Item] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCMp_IDLink_value] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ServiceCallMapping] ADD CONSTRAINT [PK_iO_Control_ServiceCallMapping] PRIMARY KEY CLUSTERED  ([XSCMp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
