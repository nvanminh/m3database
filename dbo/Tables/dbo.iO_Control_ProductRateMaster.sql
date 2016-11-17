CREATE TABLE [dbo].[iO_Control_ProductRateMaster]
(
[XRRm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_IDLink_XSCc] [int] NULL,
[XRRm_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_IDLink_XRRm_Next] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_IDLInk_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_IDLink_XRRs] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_IDLink_Impairment] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_Type] [int] NULL,
[XRRm_IDUser] [int] NULL,
[XRRm_IDARMclassic] [int] NULL,
[XRRm_SecurityValue] [int] NULL,
[XRRm_Break] [bit] NULL,
[XRRm_Exclude_Discount] [bit] NULL,
[XRRm_LVR_01] [float] NULL,
[XRRm_LVR_02] [float] NULL,
[XRRm_CreditImpairment] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_ProcessOrder] [int] NULL,
[XRRm_ValueMax] [float] NULL,
[XRRm_ValueMin] [float] NULL,
[XRRm_TermMax] [int] NULL,
[XRRm_TermMin] [int] NULL,
[XRRm_HasFixedTerm] [bit] NULL,
[XRRm_FixedTermMonths] [int] NULL,
[XRRm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRm_AddToEffectiveRate] [bit] NULL,
[XRRm_FlagAsManualRate] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductRateMaster] ADD CONSTRAINT [PK_iO_Control_ProductRateMaster] PRIMARY KEY CLUSTERED  ([XRRm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductRateMaster_9_793769885__K13_K1] ON [dbo].[iO_Control_ProductRateMaster] ([XRRm_Detail], [XRRm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductRateMaster_6_793769885__K1] ON [dbo].[iO_Control_ProductRateMaster] ([XRRm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_ProductRateMaster_9_793769885__K1_K13] ON [dbo].[iO_Control_ProductRateMaster] ([XRRm_ID], [XRRm_Detail]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ProductRateMaster] ON [dbo].[iO_Control_ProductRateMaster] ([XRRm_IDLink_XRM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateMaster', 'COLUMN', N'XRRm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateMaster', 'COLUMN', N'XRRm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateMaster', 'COLUMN', N'XRRm_Ownership'
GO
