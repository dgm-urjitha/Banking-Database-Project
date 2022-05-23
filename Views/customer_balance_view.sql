USE [BankingDatabaseSystem]
GO

/****** Object:  View [dbo].[customer_balance_view]    Script Date: 4/19/2022 2:23:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[customer_balance_view] as
select [Customer_Name], [Balance], [AccountTypeName]
from [dbo].[Customer] c
join 
[dbo].[Account] a
on 
c.[Customer_ID] = a.Customer_ID
join
[dbo].[AccountType] ac
on 
a.AccountType_ID = ac.AccountType_ID
GO


