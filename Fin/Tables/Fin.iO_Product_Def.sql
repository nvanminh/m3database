CREATE TABLE [Fin].[iO_Product_Def]
(
[DEF_ID] [int] NOT NULL IDENTITY(1, 1),
[DEF_EIR_Value] [decimal] (18, 4) NULL,
[DEF_DATE] [datetime] NULL,
[DEF_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DEF_Value] [decimal] (18, 4) NULL
) ON [PRIMARY]
GO
ALTER TABLE [Fin].[iO_Product_Def] ADD CONSTRAINT [PK_DEF] PRIMARY KEY CLUSTERED  ([DEF_ID]) ON [PRIMARY]
GO
