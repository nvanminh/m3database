CREATE TABLE [dbo].[iO_Control_ProductInterestRateDefault]
(
[XRIr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRIr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIr_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIr_IDLink_XRRct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIr_IDLink_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIr_UseManualRate] [bit] NULL,
[XRIr_ManualRateValue] [float] NULL,
[XRIr_AddToEffective] [bit] NULL,
[XRIr_Type] [int] NULL,
[XRIr_SecurityValue] [int] NULL,
[XRIr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIr_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIr_IDLink_Funder] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRIr_FixedTerm] [int] NULL,
[XRIr_IDUser] [int] NULL,
[XRIr_AddOnCreate] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductInterestRateDefault] ADD CONSTRAINT [PK_iO_Control_ProductInterestRate] PRIMARY KEY CLUSTERED  ([XRIr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
