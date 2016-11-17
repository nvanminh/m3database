CREATE TABLE [WebPortal].[ProductC4Answer]
(
[RCA_ID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCA_A1] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_A2] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_A3] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_A4] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_IDLink_RMR] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCA_Ownership] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebPortal].[ProductC4Answer] ADD CONSTRAINT [PK_ProductC4Answer] PRIMARY KEY CLUSTERED  ([RCA_ID]) ON [PRIMARY]
GO
