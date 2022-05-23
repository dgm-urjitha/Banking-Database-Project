USE [BankingDatabaseSystem]
GO

/****** Object:  Trigger [dbo].[Trg_UpdateRestricted]    Script Date: 4/19/2022 2:31:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Trg_UpdateRestricted] 
ON [dbo].[AccountType]
AFTER UPDATE
AS
BEGIN
PRINT 'Update Operation - Restricted!!'
ROLLBACK TRANSACTION
END
GO

ALTER TABLE [dbo].[AccountType] ENABLE TRIGGER [Trg_UpdateRestricted]
GO


