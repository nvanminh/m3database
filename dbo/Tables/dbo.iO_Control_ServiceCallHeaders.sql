CREATE TABLE [dbo].[iO_Control_ServiceCallHeaders]
(
[XSCH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSCH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCH_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCH_IDLink_XSCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCH_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCH_Value] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ServiceCallHeaders] ADD CONSTRAINT [PK_iO_Control_ServiceCallHeaders] PRIMARY KEY CLUSTERED  ([XSCH_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
