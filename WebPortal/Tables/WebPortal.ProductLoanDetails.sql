CREATE TABLE [WebPortal].[ProductLoanDetails]
(
[RLD_ID] [nchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLD_IDLink_RMR] [nchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLD_DisplayBrand] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLD_APLBrand] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLD_Country] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLD_Path] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLD_Ref] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLD_SubIDa] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLD_SubIDb] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLD_Ownership] [nchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLD_SubIDc] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLD_SubIDd] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [WebPortal].[ProductLoanDetails] ADD CONSTRAINT [PK__ProductL__6C2AB40A54BE0457] PRIMARY KEY CLUSTERED  ([RLD_ID]) ON [PRIMARY]
GO
ALTER TABLE [WebPortal].[ProductLoanDetails] ADD CONSTRAINT [RLD_IDLink_RMR_Non_Clustered] UNIQUE NONCLUSTERED  ([RLD_IDLink_RMR]) ON [PRIMARY]
GO
