CREATE TABLE [dbo].[io_Product_SecurityPTYLease]
(
[RSPl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPl_IDLink_RSPt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPl_LeaseStartDate] [datetime] NULL,
[RSPl_FriLease] [bit] NULL,
[RSPl_IDLink_ReviewDescription_RSD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPl_BreakDate] [datetime] NULL,
[RSPl_IDLink_BreakParty_RSD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPl_LeasePeriod] [float] NULL,
[RSPl_ReviewDate] [datetime] NULL,
[RSPl_UnitExpiryDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[io_Product_SecurityPTYLease] ADD CONSTRAINT [PK_iO_Product_SecurityPTYLease] PRIMARY KEY CLUSTERED  ([RSPl_ID]) ON [PRIMARY]
GO
