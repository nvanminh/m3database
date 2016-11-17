SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/*
drop   view vTransTypes
*/

create  view [dbo].[vTransTypes]
as 
SELECT 	 XTRM_ID [TranXID]
			,xtrm_IDUSer	 [TranXIDUser]		
			, iO_Control_TransactionMaster.XTRM_Detail [TranXDetail]
			, iO_Control_TransactionMaster.XTRM_IDText [TranXIDText]
			,case when xtrm_Detail in('Money3\Cheque Cashing\Cheque Total Amount') then 'Cheque Amount' 
						when xtrm_Detail in('Money3\Cheque Cashing\Fee')  then 'Cheque Fee' 
						when xtrm_Detail in('Money3\Disbursement\Cash Disbursement')  then 'Disbursement' 
						when xtrm_Detail in('Money3\Fee\Loan\Default Fee')  then 'Default Fee' 
						when xtrm_Detail in('Money3\Fee\Loan\Dishonour Fee (NSF) - Loan','Money3\Fee\LOC\Dishonour Fee','Money3\Fee\Reversal\Dishonour Fee - Reversal','Money3\Fee\Waived\Dishonour Fee Waived')  then 'Dishonour Fee' 
						when xtrm_Detail in('Money3\Fee\Loan\Non Payment Fee  - Loan New')  then 'Non Payment Fee' 
						when xtrm_Detail in('Money3\Fee\LOC\Application Fee','Money3\Fee\Reversal\Loan\Application Fee - Reversal')  then 'Application Fee' 
						when xtrm_Detail in('Money3\Fee\LOC\Arrears Fee')  then 'Penalities' 
						when xtrm_Detail in('Money3\Fee\LOC\Arrears Fee - New','Money3\Fee\Reversal\Arrears Letter Fee - Reversal','Money3\Fee\Loan\Arrears Letter Fee - New')  then 'Arrears Fee' 
						when xtrm_Detail in('Money3\Fee\LOC\Credit Fee')  then 'Credit Fee' 
						when xtrm_Detail in('Money3\Fee\LOC\Drawdown Fee')  then 'Drawdown Fee' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment (Direct Debit) Capitalise Effective date next day','Money3\Loan\Payment\Payment (Direct Debit) Capitalise next effective dates - Old',
																'Money3\Loan\Payment\Payment Direct Credit Recieved','Money3\Discharge\Discharge Payment\Direct Credit',
																'Money3\LOC\Payment\Payment (Direct Debit) Capitalise Today','Money3\Loan\Payment\Payment (Direct Debit) Capitalise Today')  then 'Direct Debit' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment Cash','Money3\Loan\Payment\Repayment Reversal - Cash')  then 'Cash' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment BPay','Money3\Discharge\Discharge Payment\BPay')  then 'BPay' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment Cheque','Money3\Discharge\Discharge Payment\Cheque')  then 'Cheque' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment Salary','Money3\Loan\Payment\Payment Refinanced')  then 'Salary' 
						when xtrm_Detail in('Money3\Loan\Payment\Repayment Dishonour - Old','Money3\Loan\Payment\Repayment Dishonour Manual','Money3\Loan\Payment\Repayment Dishonour - New')  then 'Repayment Dishonour' 
						when xtrm_Detail in('Money3\LOC\Disbursement\Cash Disbursement - Drawdown','Money3\LOC\Disbursement\Direct Credit - Drawdown','Money3\LOC\Disbursement\Reversal\Cash Disbursement Payment Drawdown- Reversal'
															,'Money3\LOC\Payment\Payment Reversal')  then 'Drawdown' 
						when xtrm_Detail in('Money3\MoneyGram\Disbursement\Cash (Received)')  then 'Amount Paid Out' 
						when xtrm_Detail in('Money3\MoneyGram\Disbursement\Cash (Sent)')  then 'Cash Received' 
						when xtrm_Detail in('Money3\MoneyGram\Disbursement\MoneyGram Fee')  then 'MoneyGram Fee' 
						else '' end as TransType1
			,case when xtrm_IDUSer in(6001,6011,755521,130178,130071,130095,130100,130133,130101,130134,130137,130113,130166,130126,130103,130136,130128,130145,130146
																,130081,130127,130178,800050) then 'Cash In' 
						when xtrm_IDUSer in(130000,755525,130176,130175,130500,130096,130132,130073,130003)  then 'Cash Out' 
						when xtrm_IDUSer IN (755527,755522,755530,130030,130062,5800067,5800065,5800066,800065,800066,130031,130090,9412,130086,130080,130129,130072,130145,130146,130156,5800069) then 'Fee' 
						when xtrm_IDUser in (130202,130033,130077,75105,130141,130140,755105,130200,130032,130182,130079,9535,130130,130075,130129,130201,130074,130076) then 'Penalty' 
						when xtrm_IDUser in (130041,130039,130083,130047,800061,130086,130104) then 'Waived' 
					else '' end as TransType2
			,case 	when xtrm_Detail in('Money3\Cheque Cashing\Fee')  then 'Cheque Fee' 
						when xtrm_Detail in('Money3\MoneyGram\Disbursement\MoneyGram Fee')  then 'MoneyGram Fee'
						when xtrm_Detail in('Money3\Loan\Payment\Payment BPay','Money3\Discharge\Discharge Payment\BPay')  then 'BPay' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment Cheque','Money3\Discharge\Discharge Payment\Cheque')  then 'Cheque' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment Salary','Money3\Loan\Payment\Payment Refinanced')  then 'Salary' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment (Direct Debit) Capitalise Effective date next day','Money3\Loan\Payment\Payment (Direct Debit) Capitalise next effective dates - Old',
																'Money3\Loan\Payment\Payment Direct Credit Recieved','Money3\Discharge\Discharge Payment\Direct Credit',
																'Money3\LOC\Payment\Payment (Direct Debit) Capitalise Today','Money3\Loan\Payment\Payment (Direct Debit) Capitalise Today')  then 'Direct Debit' 
						when xtrm_Detail in('Money3\Loan\Payment\Repayment Dishonour - Old','Money3\Loan\Payment\Repayment Dishonour Manual','Money3\Loan\Payment\Repayment Dishonour - New',
																'Money3\Loan\Payment\Repayment Dishonour - New')  then 'Repayment Dishonour' 
						when XTRM_Detail not in ( 'Money3\Fee\Reversal\Loan\Monthly Account Fee - Reversal','Money3\Fee\Reversal\Loan\Application Fee - Reversal','Money3\Fee\Reversal\LOC\Application Fee - Reversal') 
														and (xtrm_Detail like 'Money3\Fee\%\Arrears%F%' or xtrm_Detail like 'Money3\Fee\%\Default Fee' or xtrm_Detail like 'Money3\Fee\%\Dishonour Fee%'
																or xtrm_Detail like 'Money3\Fee\%\Non Payment Fee%' or xtrm_Detail like 'Money3\Fee\%\Reschedule Fee' or xtrm_Detail like 'Money3\Fee\%\Variation%'
																or xtrm_Detail like 'Money3\Fee\Reversal\%Fee%Reversal'
																or xtrm_Detail like 'Money3\Loan\Interest\Penalty Interest - Loan' )
																--,'Money3\Fee\Reversal\Arrears Letter Fee - Reversal','Money3\Fee\Reversal\Loan\Application Fee - Reversal','Money3\Fee\Reversal\Dishonour Fee - Reversal')  
																--Money3\Fee\Loan\Arrears Letter Fee - New
																then 'Penalty' 
						else '' end as 'MgtTrans'

	FROM iO_Control_TransactionMaster 
--where iO_Control_TransactionMaster.XTRM_IDText= 130145
		group by XTRM_ID , iO_Control_TransactionMaster.XTRM_Detail
			, iO_Control_TransactionMaster.XTRM_IDText
			,xtrm_IDUSer
			--order by xtrm_IDUSer


--select XTRM_Detail [TranDetail],xtrm_IDUSer	 [TranXIDUser]  from iO_Control_TransactionMaster where XTRM_Detail = 'Money3\LOC\Payment\Payment (Direct Debit) Capitalise Today'


/*
			,case when xtrm_Detail in('Money3\Cheque Cashing\Cheque Total Amount') then 'Cheque Amount' 
						when xtrm_Detail in('Money3\Cheque Cashing\Fee')  then 'Cheque Fee' 
						when xtrm_Detail in('Money3\Disbursement\Cash Disbursement')  then 'Disbursement' 
						when xtrm_Detail in('Money3\Fee\Loan\Default Fee')  then 'Default Fee' 
						when xtrm_Detail in('Money3\Fee\Loan\Dishonour Fee (NSF) - Loan','Money3\Fee\LOC\Dishonour Fee','Money3\Fee\Reversal\Dishonour Fee - Reversal','Money3\Fee\Waived\Dishonour Fee Waived')  then 'Dishonour Fee' 
						when xtrm_Detail in('Money3\Fee\Loan\Non Payment Fee  - Loan New')  then 'Non Payment Fee' 
						when xtrm_Detail in('Money3\Fee\LOC\Application Fee','Money3\Fee\Reversal\Loan\Application Fee - Reversal')  then 'Application Fee' 
						when xtrm_Detail in('Money3\Fee\LOC\Arrears Fee')  then 'Penalities' 
						when xtrm_Detail in('Money3\Fee\LOC\Arrears Fee - New','Money3\Fee\Reversal\Arrears Letter Fee - Reversal','Money3\Fee\Loan\Arrears Letter Fee - New')  then 'Arrears Fee' 
						when xtrm_Detail in('Money3\Fee\LOC\Credit Fee')  then 'Credit Fee' 
						when xtrm_Detail in('Money3\Fee\LOC\Drawdown Fee')  then 'Drawdown Fee' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment (Direct Debit) Capitalise Effective date next day','Money3\Loan\Payment\Payment (Direct Debit) Capitalise next effective dates - Old',
																'Money3\Loan\Payment\Payment Direct Credit Recieved','Money3\Discharge\Discharge Payment\Direct Credit',
																'Money3\LOC\Payment\Payment (Direct Debit) Capitalise Today','Money3\Loan\Payment\Payment (Direct Debit) Capitalise Today')  then 'Direct Debit' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment Cash','Money3\Loan\Payment\Repayment Reversal - Cash')  then 'Cash' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment BPay','Money3\Discharge\Discharge Payment\BPay')  then 'BPay' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment Cheque','Money3\Discharge\Discharge Payment\Cheque')  then 'Cheque' 
						when xtrm_Detail in('Money3\Loan\Payment\Payment Salary','Money3\Loan\Payment\Payment Refinanced')  then 'Salary' 
						when xtrm_Detail in('Money3\Loan\Payment\Repayment Dishonour - Old','Money3\Loan\Payment\Repayment Dishonour Manual','Money3\Loan\Payment\Repayment Dishonour - New')  then 'Repayment Dishonour' 
						when xtrm_Detail in('Money3\LOC\Disbursement\Cash Disbursement - Drawdown','Money3\LOC\Disbursement\Direct Credit - Drawdown','Money3\LOC\Disbursement\Reversal\Cash Disbursement Payment Drawdown- Reversal'
															,'Money3\LOC\Payment\Payment Reversal')  then 'Drawdown' 
						when xtrm_Detail in('Money3\MoneyGram\Disbursement\Cash (Received)')  then 'Amount Paid Out' 
						when xtrm_Detail in('Money3\MoneyGram\Disbursement\Cash (Sent)')  then 'Cash Received' 
						when xtrm_Detail in('Money3\MoneyGram\Disbursement\MoneyGram Fee')  then 'MoneyGram Fee' 

*/
GO
