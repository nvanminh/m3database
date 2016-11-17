CREATE TABLE [dbo].[iO_B2P_ResponseProcessing]
(
[PErp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PErp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErp_IDLink_PErm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PErp_Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErp_Value] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErp_IDLink_Service] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_ResponseProcessing] ADD CONSTRAINT [PK_iO_B2P_ResponseComboProcessing] PRIMARY KEY CLUSTERED  ([PErp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
