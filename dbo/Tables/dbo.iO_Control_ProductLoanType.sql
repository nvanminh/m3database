CREATE TABLE [dbo].[iO_Control_ProductLoanType]
(
[XRPlt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRPlt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPlt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPlt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPlt_IDLink_XSCc] [int] NULL,
[XRPlt_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPlt_Type] [int] NULL,
[XRPlt_IDUser] [int] NULL,
[XRPlt_IDARMclassic] [int] NULL,
[XRPlt_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPlt_SecurityValue] [int] NULL,
[XRPlt_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductLoanType] ADD CONSTRAINT [PK_iO_Control_ProductLoanType] PRIMARY KEY CLUSTERED  ([XRPlt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
