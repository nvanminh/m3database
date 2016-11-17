CREATE TABLE [dbo].[iO_Product_ControlRatio]
(
[RCTi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTi_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTi_IDLink_XRTi] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCTi_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCTi_IDUser] [int] NULL,
[RCTi_Type] [int] NULL,
[RCTi_CurrentValue] [float] NULL,
[RCTi_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlRatio] ADD CONSTRAINT [PK_iO_Product_ControlRation] PRIMARY KEY CLUSTERED  ([RCTi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlRatio_10] ON [dbo].[iO_Product_ControlRatio] ([RCTi_IDLink_RMR], [RCTi_IDLink_XRTi]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
