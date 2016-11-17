CREATE TABLE [dbo].[iO_ATS_Log]
(
[ATSlg_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ATSlg_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ATSlg_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ATSlg_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ATSlg_SeqNumber] [bigint] NULL,
[ATSlg_Type] [int] NULL,
[ATSlg_IDLink_SYSdb] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ATSlg_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ATSlg_Date] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ATS_Log] ADD CONSTRAINT [PK_iO_ATS_Log] PRIMARY KEY CLUSTERED  ([ATSlg_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
