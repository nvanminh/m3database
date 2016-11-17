CREATE TABLE [dbo].[iO_Geolocation_Cache]
(
[GLC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GLC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GLC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GLC_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GLC_Type] [int] NULL,
[GLC_Date] [datetime] NULL,
[GLC_RawRequest] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GLC_RawResponse] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GLC_Status] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GLC_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GLC_Lat] [float] NULL,
[GLC_Lng] [float] NULL,
[GLC_Accuracy] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GLC_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GLC_GEOLoc] [sys].[geography] NULL,
[GLC_GEOIsValid] [bit] NULL,
[GLC_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Geolocation_Cache] ADD CONSTRAINT [PK_iO_Geolocation_Cache] PRIMARY KEY CLUSTERED  ([GLC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
