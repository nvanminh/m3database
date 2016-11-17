CREATE TABLE [dbo].[iO_Client_IndividualEmploymentCentrelinkPayments]
(
[CEP_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CEP_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CEP_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEP_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEP_IDLink_CED] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEP_CentrelinkPaymentName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CEP_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CEP_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_IndividualEmploymentCentrelinkPayments] ADD CONSTRAINT [iO_Client_IndividualEmploymentCentrelinkPayments_PrimaryKey] PRIMARY KEY CLUSTERED  ([CEP_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualEmploymentCentrelinkPayments', 'COLUMN', N'CEP_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualEmploymentCentrelinkPayments', 'COLUMN', N'CEP_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_IndividualEmploymentCentrelinkPayments', 'COLUMN', N'CEP_Ownership'
GO
