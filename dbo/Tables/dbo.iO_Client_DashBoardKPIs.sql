CREATE TABLE [dbo].[iO_Client_DashBoardKPIs]
(
[CDBkpi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CDBkpi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CDBkpi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDBkpi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDBkpi_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDBkpi_IDLink_XCT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDBkpi_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CDBkpi_IDUser] [int] NULL,
[CDBkpi_Type] [int] NULL,
[CDBkpi_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CDBkpi_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_DashBoardKPIs] ADD CONSTRAINT [PK_iO_Client_DashBoardKPIs] PRIMARY KEY CLUSTERED  ([CDBkpi_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
