CREATE TABLE [dbo].[iO_Control_ProductLoanClass]
(
[XRPlc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRPlc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRPlc_Type] [int] NULL,
[XRPlc_IDUser] [int] NULL,
[XRPlc_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPlc_SecurityValue] [int] NULL,
[XRPlc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPlc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPlc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPlc_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductLoanClass] ADD CONSTRAINT [PK_iO_Control_ProductLoanClass] PRIMARY KEY CLUSTERED  ([XRPlc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductLoanClass', 'COLUMN', N'XRPlc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductLoanClass', 'COLUMN', N'XRPlc_Ownership'
GO
