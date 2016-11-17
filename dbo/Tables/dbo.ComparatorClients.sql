CREATE TABLE [dbo].[ComparatorClients]
(
[ID] [uniqueidentifier] NOT NULL,
[CMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMR_SeqNumber] [bigint] NULL,
[FirstName] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FullName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [date] NULL,
[Title] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccountID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BankAccount] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AccountName] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Street] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostalCode] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherAddressInfo] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Mobile] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherContactInfo] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL,
[Hashkeys] [varchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsMergedWithAnother] [bit] NULL,
[FundedLoan] [int] NULL,
[DischargedLoan] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ComparatorClients] ADD CONSTRAINT [PK_dbo.ComparatorClients] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_hashkey] ON [dbo].[ComparatorClients] ([Hashkeys]) ON [PRIMARY]
GO
