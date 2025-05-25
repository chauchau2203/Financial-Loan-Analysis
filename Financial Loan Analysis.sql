-- A. SUMMARY
-- Total Loan Applications
SELECT COUNT (id) AS Total_Applications 
FROM financial_loan;

-- MTD Loan Applications
SELECT COUNT(id) AS Total_Applications_MTD 
FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD Loan Applications
SELECT COUNT(id) AS Total_Applications_PMTD 
FROM financial_loan
WHERE MONTH(issue_date) = 11;

-- Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount 
FROM financial_loan;

-- MTD Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount_MTD 
FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount_PMTD 
FROM financial_loan
WHERE MONTH(issue_date) = 11;

-- Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected 
FROM financial_loan;

-- MTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected_MTD 
FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected_PMTD 
FROM financial_loan
WHERE MONTH(issue_date) = 11;

-- Average Interest Rate
SELECT ROUND(AVG(int_rate)*100, 2) AS Avg_Int_Rate 
FROM financial_loan;

-- MTD Average Interest Rate
SELECT ROUND(AVG(int_rate)*100, 2) AS Avg_Int_Rate_MTD 
FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD Average Interest Rate
SELECT ROUND(AVG(int_rate)*100, 2) AS Avg_Int_Rate_PMTD 
FROM financial_loan
WHERE MONTH(issue_date) = 11;

-- Average DTI (Debt to Income ratio)
SELECT ROUND(AVG(dti)*100, 2) AS Avg_DIT
FROM financial_loan;

-- MTD Average DTI 
SELECT ROUND(AVG(dti)*100, 2) AS Avg_DIT_MTD
FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD Average DTI 
SELECT ROUND(AVG(dti)*100, 2) AS Avg_DIT_PMTD
FROM financial_loan
WHERE MONTH(issue_date) = 11;

-- Good Loan Percentage
SELECT
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0)/
	COUNT(id) AS Good_Loan_Percentage
	FROM financial_loan;

-- Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications 
FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount
FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_amount_received 
FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Bad Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM financial_loan;

-- Bad Loan Application
SELECT COUNT(id) AS Bad_Loan_Applications 
FROM financial_loan
WHERE loan_status = 'Charged Off';

-- Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount 
FROM financial_loan
WHERE loan_status = 'Charged Off';

-- Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received 
FROM financial_loan
WHERE loan_status = 'Charged Off';

-- Loan Status
SELECT
	loan_status,
	COUNT(id) AS Loan_Count,
	SUM(total_payment) AS Total_Amount_Received,
	SUM(loan_amount) AS Total_Funded_Amount,
	ROUND(AVG(int_rate * 100), 2) AS Interest_Rate,
	ROUND(AVG(dti * 100), 2) AS DTI
FROM financial_loan
GROUP BY loan_status;

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM financial_loan
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status;



-- B. OVERVIEW
-- Month
SELECT 
	MONTH(issue_date) AS Month_Munber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date);

-- State
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY address_state
ORDER BY address_state;

-- Term
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY term
ORDER BY term;

-- Employee Length
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length;

-- Purpose
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose;

-- Home Ownershi[p
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY home_ownership
ORDER BY home_ownership;


