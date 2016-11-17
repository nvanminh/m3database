CREATE TABLE [dbo].[iO_ABN_BusEntNames]
(
[ABbn_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABbn_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbn_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbn_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbn_IDLink_ABbm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbn_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABbn_Type] [int] NULL,
[ABbn_Name] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbn_EffectiveFromDate] [datetime] NULL,
[ABbn_EffectiveToDate] [datetime] NULL,
[ABbn_IndGivenName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbn_IndFamilyName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbn_IndOtherNames] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_BusEntNames] ADD CONSTRAINT [PK_iO_ABN_BusEntNames] PRIMARY KEY CLUSTERED  ([ABbn_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
