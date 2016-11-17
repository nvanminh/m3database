SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create  view [dbo].[vProductGroups]
as 
	select XRP_ID [PGXRP_ID]
			, XRP_Detail [PGXRP_Detail]
			,case when XRP_Detail in ('Money3\Line of Credit','Money3\Old LOC','Money3\SACC','Money3\TACC') then 'LOC'
						when XRP_Detail in ('Money3\LACC','Money3\Old Personal Loan','Money3\90 Day Loan','Money3\MACC','Money3\Personal Loan') then 'Loan'
						when XRP_Detail in ('Money3\MoneyGram') then 'MoneyGram'
						when XRP_Detail in ('Money3\Vehicle Rentals','Rental\Vechicle') then 'VehicleRentals'
						when XRP_Detail in ('Money3\Cheque Cashing') then 'Cheques'
						else ''
			end [PGProdGrp]
	from iO_Control_ProductMaster
GO
