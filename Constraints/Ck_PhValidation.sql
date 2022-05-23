USE [BankingDatabaseSystem]
GO

ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [Ck_PhValidation] CHECK  (([Contact]>=(100000000) AND [Contact]<=(999999999)))
GO

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [Ck_PhValidation]
GO


