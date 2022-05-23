USE [BankingDatabaseSystem]
GO

/****** Object:  StoredProcedure [dbo].[SP_LOWBALANCE]    Script Date: 4/19/2022 2:24:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[SP_LOWBALANCE]
		-- Add the parameters for the stored procedure here
		@LOWBAL  INT  
	AS
	BEGIN
		-- SET NOCOUNT ON added to prevent extra result sets from
		-- interfering with SELECT statements.
		SET NOCOUNT ON;

		-- Insert statements for procedure here
		SELECT Customer_Name, BALANCE LOWBALANCE
		FROM [dbo].[Customer] C
		JOIN 
		[dbo].[Account] AC
		ON 
		C.Customer_ID = AC.Customer_ID
		WHERE AC.Balance <= @LOWBAL
	END



GO


