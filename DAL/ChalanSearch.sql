USE [ERP_Logistic]
GO
/****** Object:  StoredProcedure [dbo].[sprTripChalanSeparate]    Script Date: 1/12/2023 11:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mowaz Ahmad
-- Create date: 07-01-2023
-- Description:	Chalan Search, Delete, Restore
-- Exec erp_Logistic.dbo.sprTripChalanSeparate 0,0,'AMFL-SV-TS-FEB16-2'
-- exec [dbo].[sprTripChalanSeparate] 2,0,'AMFL-SV-TS-FEB16-2'
-- =============================================
ALTER PROCEDURE [dbo].[sprTripChalanSeparate]
	@intType int, @intID int, @strChalan varchar(500)
AS
BEGIN
	SET NOCOUNT ON

	if(@intType = 1)
	begin

		SELECT det.intAutoID, det.strChallanNo, det.intCustID
		FROM ERP_Logistic.dbo.tblInternalTRouteCostMain as main
		INNER JOIN ERP_Logistic.dbo.tblInternalTRouteCostDetails as  det ON main.intID = det.intReffID
		WHERE main.strTripSLNo = @strChalan 
		and det.ysnActive = 1

	end
	else if(@intType = 2)
	begin
		SELECT det.intAutoID, det.strChallanNo, det.intCustID, det.ysnActive
		FROM ERP_Logistic.dbo.tblInternalTRouteCostMain as main
		INNER JOIN ERP_Logistic.dbo.tblInternalTRouteCostDetails as  det ON main.intID = det.intReffID
		WHERE main.strTripSLNo = @strChalan
		and det.ysnActive = 0
	end
	else if(@intType = 3)
	begin
		UPDATE tblInternalTRouteCostDetails
		SET ysnActive = 0
		WHERE intAutoID = @intID
	end
	else if(@intType = 4)
	begin
		UPDATE ERP_Logistic.dbo.tblInternalTRouteCostDetails
		SET ysnActive = 1
		WHERE intAutoID = @intID
	end
END
