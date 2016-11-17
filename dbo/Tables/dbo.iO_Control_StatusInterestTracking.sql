CREATE TABLE [dbo].[iO_Control_StatusInterestTracking]
(
[XSUit_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSUit_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUit_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSUit_IDUser] [int] NULL,
[XSUit_Type] [int] NULL,
[XSUit_IDLink_Rate] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUit_IDLink_Interest_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUit_IDLink_Update_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSUit_Active] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_StatusInterestTracking] ADD CONSTRAINT [PK_iO_Control_StatusInterestTracking] PRIMARY KEY NONCLUSTERED  ([XSUit_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_iO_Control_StatusInterestTracking_IDLink_XSU] ON [dbo].[iO_Control_StatusInterestTracking] ([XSUit_IDLink_XSU]) ON [PRIMARY]
GO
