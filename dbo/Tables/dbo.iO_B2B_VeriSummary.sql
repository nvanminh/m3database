CREATE TABLE [dbo].[iO_B2B_VeriSummary]
(
[BBvs_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBvs_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvs_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvs_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvs_IDLink_BBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvs_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[BBvs_ReqVeriChk] [bit] NULL,
[BBvs_ReqFraudChk] [bit] NULL,
[BBvs_ReqDFATChk] [bit] NULL,
[BBvs_ReqOFACChk] [bit] NULL,
[BBvs_ReqBirthCertChk] [bit] NULL,
[BBvs_ReqFTRAChk] [bit] NULL,
[BBvs_RsltVeriChk] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvs_RsltFraudChk] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvs_RsltDFATChk] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvs_RsltOFACChk] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvs_RsltBirthCertChk] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvs_RsltFTRAChk] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_VeriSummary] ADD CONSTRAINT [PK_iO_B2B_VeriSummary] PRIMARY KEY CLUSTERED  ([BBvs_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriSummary', 'COLUMN', N'BBvs_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriSummary', 'COLUMN', N'BBvs_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriSummary', 'COLUMN', N'BBvs_Ownership'
GO
