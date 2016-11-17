CREATE TABLE [dbo].[io_Control_ProductState]
(
[XRPp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRPp_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPp_IDLink_XSYSsa] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPp_Type] [int] NULL,
[XRPp_IDUser] [int] NULL,
[XRPp_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPp_SecurityValue] [int] NULL,
[XRPp_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[io_Control_ProductState] ADD CONSTRAINT [PK_io_Control_ProductState] PRIMARY KEY CLUSTERED  ([XRPp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_io_Control_ProductState_6_228963942__K2] ON [dbo].[io_Control_ProductState] ([XRPp_IDLink_XRP]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
