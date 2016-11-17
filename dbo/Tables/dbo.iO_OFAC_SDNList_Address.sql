CREATE TABLE [dbo].[iO_OFAC_SDNList_Address]
(
[OSLa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OSLa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_IDLink_OSLm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_Address1] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_Address2] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_Address3] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_City] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_State] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_PostCode] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_Country] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_OFAC_SDNList_Address] ADD CONSTRAINT [PK_iO_OFAC_SDNList_Address] PRIMARY KEY CLUSTERED  ([OSLa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_OFAC_SDNList_Address', 'COLUMN', N'OSLa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_OFAC_SDNList_Address', 'COLUMN', N'OSLa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_OFAC_SDNList_Address', 'COLUMN', N'OSLa_Ownership'
GO
