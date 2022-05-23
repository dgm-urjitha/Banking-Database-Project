USE [BankingDatabaseSystem]
GO

ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [df_balance]  DEFAULT ((0)) FOR [Balance]
GO


