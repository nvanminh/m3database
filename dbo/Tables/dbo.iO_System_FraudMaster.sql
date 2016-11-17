CREATE TABLE [dbo].[iO_System_FraudMaster]
(
[SYSfm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSfm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSfm_IDLink_XSYSft] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_FirstName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_MiddleNames] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_SurOrCompanyName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_TrusteeName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_ABNOrACN] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_PrincpalActivity] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_AdditionalInfo] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_IDLink_XSYSwt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfm_ControlDate] [datetime] NULL,
[SYSfm_ExceptionValue] [int] NULL,
[SYSfm_ExceptionText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_FraudMaster] ADD CONSTRAINT [PK_iO_System_FraudMaster] PRIMARY KEY CLUSTERED  ([SYSfm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
