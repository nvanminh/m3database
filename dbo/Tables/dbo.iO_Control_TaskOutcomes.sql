CREATE TABLE [dbo].[iO_Control_TaskOutcomes]
(
[XTKMoc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTKMoc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTKMoc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKMoc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKMoc_IDLink_XTKM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKMoc_IDLink_Step] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKMoc_Type] [int] NULL,
[XTKMoc_IDOrder] [int] NULL,
[XTKMoc_IDUser] [int] NULL,
[XTKMoc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTKMoc_Security] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TaskOutcomes] ADD CONSTRAINT [PK_iO_Control_TaskOutcomes] PRIMARY KEY CLUSTERED  ([XTKMoc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
