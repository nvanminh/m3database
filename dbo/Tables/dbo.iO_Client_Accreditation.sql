CREATE TABLE [dbo].[iO_Client_Accreditation]
(
[CAC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_IDLink_Code_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_IDLink_Association] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_IDLink_Category] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_IDLink_Aggregator] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_IDLink_Officer] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_BrokerID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_Accreditation_Officer] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_SeqNumber] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CAC_Prefix] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_AccreditationNumber] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_Accreditation_Date] [smalldatetime] NULL,
[CAC_ValuationClawback] [bit] NULL,
[CAC_ComissionsClawback] [bit] NULL,
[CAC_SuspendArrears] [bit] NULL,
[CAC_DefEstFee] [bit] NULL,
[CAC_Active] [int] NULL,
[CAC_Accredited] [int] NULL,
[CAC_IDUser] [int] NULL,
[CAC_Type] [int] NULL,
[CAC_Status] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAC_ActiveDate] [datetime] NULL,
[CAC_InActiveDate] [datetime] NULL,
[CAC_PaidAtSettlement] [bit] NULL,
[CAC_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_Accreditation] ADD CONSTRAINT [PK_dbo.iO_Client_Accreditation] PRIMARY KEY CLUSTERED  ([CAC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_Accreditation] ON [dbo].[iO_Client_Accreditation] ([CAC_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
