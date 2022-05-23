USE [BankingDatabaseSystem]
GO

/****** Object:  Table [dbo].[Account]    Script Date: 4/19/2022 2:20:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Account](
	[Account_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[AccountType_ID] [int] NOT NULL,
	[Account_No] [int] NOT NULL,
	[Balance] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [df_balance]  DEFAULT ((0)) FOR [Balance]
GO


