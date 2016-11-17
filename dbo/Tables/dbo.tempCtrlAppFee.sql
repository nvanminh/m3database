CREATE TABLE [dbo].[tempCtrlAppFee]
(
[RCFe_IDLink_RMR] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CtrlAppFee] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tempCtrlAppFeePK] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tempCtrlAppFee] ADD CONSTRAINT [tempCtrlAppFee_PrimaryKey] PRIMARY KEY CLUSTERED  ([tempCtrlAppFeePK]) ON [PRIMARY]
GO
