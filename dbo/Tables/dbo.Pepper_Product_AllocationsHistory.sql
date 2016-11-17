CREATE TABLE [dbo].[Pepper_Product_AllocationsHistory]
(
[PALL_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PALL_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PALL_StartDate] [datetime] NULL,
[PALL_EndDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pepper_Product_AllocationsHistory] ADD CONSTRAINT [PK_Pepper_Product_AllocationsHistory] PRIMARY KEY CLUSTERED  ([PALL_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
