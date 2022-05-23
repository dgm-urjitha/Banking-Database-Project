USE [BankingDatabaseSystem]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 4/19/2022 2:22:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] NOT NULL,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Contact] [int] NOT NULL,
	[Bank_ID] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [df_bankID]  DEFAULT ((110)) FOR [Bank_ID]
GO

ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Bank] FOREIGN KEY([Bank_ID])
REFERENCES [dbo].[Bank] ([Bank_ID])
ON DELETE SET DEFAULT
GO

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Bank]
GO

ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [Ck_PhValidation] CHECK  (([Contact]>=(100000000) AND [Contact]<=(999999999)))
GO

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [Ck_PhValidation]
GO


