CREATE TABLE [dbo].[iO_Control_ENum]
(
[XENum_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XENum_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XENum_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XENum_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XENum_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XENum_Detail] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XENum_SeqNumber] [bigint] NULL,
[XENum_Description] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XENum_MaxSize] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ENum] ADD CONSTRAINT [iO_Control_ENum_PrimaryKey] PRIMARY KEY CLUSTERED  ([XENum_ID]) ON [PRIMARY]
GO
