CREATE TABLE [dbo].[iO_Decisionlogic_RequestDetail]
(
[dlrd_id] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[dlrd_idlink_cbd] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dlrd_requestcode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dlrd_datetime] [datetime] NULL,
[dlrd_user] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dlrd_from_date] [datetime] NULL,
[dlrd_to_date] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Decisionlogic_RequestDetail] ADD CONSTRAINT [PK__iO_Decis__7616ED733593AC2F] PRIMARY KEY CLUSTERED  ([dlrd_id]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-110800_cbd] ON [dbo].[iO_Decisionlogic_RequestDetail] ([dlrd_idlink_cbd]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
