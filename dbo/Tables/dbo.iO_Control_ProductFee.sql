CREATE TABLE [dbo].[iO_Control_ProductFee]
(
[XRFe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRFe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFe_IDLink_XSCc] [int] NULL,
[XRFe_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFe_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFe_IDLink_Due] [int] NULL,
[XRFe_IDLink_Payable] [int] NULL,
[XRFe_IDUser] [int] NULL,
[XRFe_Type] [int] NULL,
[XRFe_Value] [float] NULL,
[XRFe_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFe_AmountOverride] [bit] NULL,
[XRFe_IDLink_XTRC] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFe_Capitalise] [bit] NULL,
[XRFe_DateEffectiveTo] [datetime] NULL,
[XRFe_DateEffectiveFrom] [datetime] NULL,
[XRFe_IDLink_Link] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFe_IDLink_XCOMm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFe_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRFe_SecurityValue] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductFee] ADD CONSTRAINT [PK_iO_Control_ProductFee] PRIMARY KEY CLUSTERED  ([XRFe_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductFee', 'COLUMN', N'XRFe_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductFee', 'COLUMN', N'XRFe_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductFee', 'COLUMN', N'XRFe_Ownership'
GO
