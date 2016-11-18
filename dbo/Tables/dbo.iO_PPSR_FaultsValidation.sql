CREATE TABLE [dbo].[iO_PPSR_FaultsValidation]
(
[PPSrv_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrv_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSrv_IDLink_PPSrf] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PPSrv_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PPSrv_ErrorNumber] [int] NULL,
[PPSrv_ErrorDesc] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_PPSR_FaultsValidation] ADD CONSTRAINT [PK__iO_PPSR___68955D80B854C1AA] PRIMARY KEY CLUSTERED  ([PPSrv_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
