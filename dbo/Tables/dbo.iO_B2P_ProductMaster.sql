CREATE TABLE [dbo].[iO_B2P_ProductMaster]
(
[PEpm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PEpm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEpm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEpm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEpm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PEpm_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEpm_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEpm_DetailXML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEpm_ComboXML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEpm_Current] [bit] NULL,
[PEpm_Used] [int] NULL,
[PEpm_LoanAmtMin] [float] NULL,
[PEpm_LoanAmtMax] [float] NULL,
[PEpm_LVRMin] [float] NULL,
[PEpm_LVRMax] [float] NULL,
[PEpm_LoanTermMin] [int] NULL,
[PEpm_LoanTermMax] [int] NULL,
[PEpm_Impairment] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEpm_InitialRate] [float] NULL,
[PEpm_InitialTerm] [int] NULL,
[PEpm_InterestOnlyTermMax] [int] NULL,
[PEpm_BaseRate] [float] NULL,
[PEpm_DateStart] [datetime] NULL,
[PEpm_DateEnd] [datetime] NULL,
[PEpm_MiscXML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEpm_DateCreated] [datetime] NULL,
[PEpm_DateExpired] [datetime] NULL,
[PEpm_DateSystem] [datetime] NULL,
[PEpm_ABNWithinWindow] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_ProductMaster] ADD CONSTRAINT [PK_iO_B2P_ProductMaster] PRIMARY KEY CLUSTERED  ([PEpm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
