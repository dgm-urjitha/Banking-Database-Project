USE [BankingDatabaseSystem]
GO

/****** Object:  UserDefinedFunction [dbo].[fun_avgbal]    Script Date: 4/19/2022 2:27:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[fun_avgbal]()
returns table
as
return (select AVG(balance) Average_Balance from Account)
GO


