CREATE TABLE [dbo].[cash_store_viewforcustid]
(
[BranchCustID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BranchID] [float] NULL,
[Branch] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cust_ID] [float] NULL,
[Title] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Given_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Middle_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PreferredName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Date_Of_Birth] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sex] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Suite] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Floor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Property_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Unit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Street_Number] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Street_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Street_Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Suburb] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Post_Code] [float] NULL,
[Country] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Home_Phone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Work_Phone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Mobile_Phone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[M_Suite] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[M_Floor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[M_Property_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[M_Unit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[M_Street_Number] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[M_Street_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[M_Street_Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[M_Suburb] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[M_State] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[M_Post_Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Marital_Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Residential_Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Deceased] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Incarcerated] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Joint_Borrowing] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Relationship] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[R_Last_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[R_Given_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Marketing_Text] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Employer] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Contact_Person] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Contact_Phone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Suite] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Property_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Floor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Unit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Street_Number] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Street_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Street_Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Suburb] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Post_Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_State] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Phone_Number] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Fax_Number] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Mobile_Number] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E_Email] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status_Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account_Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BSB] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account Number] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account_Name2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BSB2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account Number2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account_Name3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BSB3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account Number3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account_Name4] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BSB4] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Account Number4] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[birth_date] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cust_no] [float] NULL,
[store_no] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[store_name] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
