USE [BankingDatabaseSystem]
GO

/****** Object:  View [dbo].[vSavingAccount]    Script Date: 4/19/2022 2:23:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vSavingAccount]
AS
SELECT C.Customer_ID,C.Customer_Name, C.Contact,A.Account_No,A.Balance,B.BankName,ATY.AccountTypeName
FROM
Customer C
JOIN
Account A
ON A.Customer_ID = C.Customer_ID
JOIN
Bank B
ON
B.Bank_ID = C.Bank_ID
JOIN
AccountType ATY
ON
A.AccountType_ID = ATY.AccountType_ID
WHERE ATY.AccountTypeName = 'SAVING'
GO


