# Financial-Loan-Analysis

## A. Description

This project provides a comprehensive analysis of financial loan data to monitor and assess lending activities and performance. The primary objective is to create data-driven insights through detailed analysis of loan applications, funding amounts, repayment patterns, and borrower characteristics. The project aims to help financial institutions make informed decisions, track loan portfolio health, and identify trends that can inform lending strategies.

### Objectives
- Monitor loan application trends and performance metrics.
- Distinguish between 'Good Loans' and 'Bad Loans' based on loan status.
- Analyze regional, temporal, and demographic patterns in lending.
- Provide comprehensive dashboards for executive decision-making.
- Track key performance indicators (KPIs) including MTD and MoM changes.

## B. Data Sources

**Primary Source:**  
- Lending Club Dataset from Kaggle (dataset now deleted).

**Key Columns:**
- `id`: Unique loan identifier
- `loan_status`: Loan status (Fully Paid, Current, Charged Off)
- `loan_amnt`: Requested loan amount
- `funded_amnt`: Amount funded
- `int_rate`: Interest rate
- `installment`: Monthly payment
- `grade`: Assigned loan grade
- `emp_length`: Borrower’s employment length
- `home_ownership`: Home ownership status
- `annual_inc`: Borrower’s annual income
- `verification_status`: Income verification status
- `issue_d`: Loan issue date
- `purpose`: Loan purpose
- `addr_state`: Borrower’s state
- `dti`: Debt-to-income ratio
- `total_pymnt`: Total amount received to date

## C. Installation/Setup

### Prerequisites
- SQL Server Management Studio (SSMS) 21. Download [here](https://learn.microsoft.com/en-us/ssms/install/install)
- Microsoft Power BI Desktop (2.131.1203.0 32-bit July 2024). Download [here](https://www.microsoft.com/en-us/power-platform/products/power-bi/downloads)

### Setup 
- Install Microsoft SQL Server 2025.
- Import the financial loan dataset into SQL Server.
- Run the provided SQL script for data analysis and KPI calculations.
- Connect Power BI to your SQL Server database.
- Open the provided `.pbix` file for dashboards.
- Verify data refresh and relationships.

## D. Project Structure

### 1. [Financial Loan Analysis.sql]()

*SQL queries for data exploration, KPI calculations, and loan performance analysis.*

**Portfolio-Level KPIs and Time-Based Metrics**

- Calculates total loan applications, total funded amounts, and total amount received from borrowers.
- Provides month-to-date (MTD), previous month-to-date (PMTD), and overall figures for applications, funding, and repayments.
- Computes average interest rate and average debt-to-income (DTI) ratio for the entire portfolio, as well as for current and previous months.

**Loan Quality and Risk Segmentation**

- Classifies loans as "Good" (statuses: Fully Paid, Current) or "Bad" (status: Charged Off).
- Calculates the percentage and count of good and bad loans.
- Aggregates funded and collected amounts for both good and bad loan segments.
- Supports KPI reporting on portfolio health and risk exposure.

**Status-Based and Grid Reporting**

- Breaks down key metrics (loan count, funded amount, amount received, interest rate, DTI) by loan status, enabling grid-style reporting for executive dashboards.
- Provides MTD breakdowns by loan status for dynamic reporting needs.

**Temporal Analysis**

- Analyzes monthly trends in loan applications, funding, and repayments.
- Outputs metrics by month number and month name, supporting time-series visualization and seasonality analysis.

**Regional and Demographic Analysis**

- Aggregates loan metrics by U.S. state, enabling regional performance assessment and identification of geographic disparities.
- Summarizes metrics by loan term (e.g., 36 months, 60 months), employment length, loan purpose, and home ownership status, supporting multidimensional analysis and segmentation.


### 2. [Financial Loan Dashboard.pbix]()

*Power BI file with dashboards: Summary, Overview, and Details, including DAX measures.*

**Dashboard 1: Summary**
- Total loan applications, MTD/PMTD tracking.
- Funding and repayment analysis.
- Average interest rate and DTI.
- Good vs. Bad loan KPIs.
- Loan status grid view.
![d6404874-96d2-44bf-a680-a54abb361a21](https://github.com/user-attachments/assets/0ac80cf2-87c1-459a-8420-d62e3cf8c7d0)


**Dashboard 2: Overview**
- Monthly trends. 
- Regional analysis by state. 
- Loan term analysis. 
- Employee length analysis. 
- Loan purpose breakdown. 
- Home ownership analysis. 
![3d00f83d-741c-4a8a-9bd2-f6e6cce16f65](https://github.com/user-attachments/assets/66fd5bff-aefe-4c1f-8d53-0397e9ed916a)


**Dashboard 3: Details**
- Data table for all key loan and borrower metrics.
- Filterable, sortable interface for in-depth analysis.
![92b648b7-0661-4ba7-9648-f20b8b4c35a6](https://github.com/user-attachments/assets/20863ddd-2d87-4e51-a8d4-88698972084a)


### 3. [Financial Loan Report.pdf]()

-   FILL IN THIS BLANK


## E. Analysis and Results

*[To be completed with findings and insights]*

## F. Future Work Extension and Improvement

- **Real-time Data Integration:** Automate data pipelines for real-time monitoring.
- **Advanced Analytics:** Integrate machine learning for default prediction.
- **Mobile Dashboard:** Enable Power BI mobile access.
- **Risk Modeling:** Build credit risk assessment models.
- **Cohort & Predictive Analysis:** Add borrower cohort tracking and forecasting.
- **Regulatory Reporting:** Expand for compliance and regulatory needs.
- **Visualization Enhancements:** Add drill-downs, alerts, and custom KPI tracking.
- **Data Quality:** Improve validation and integrate external economic data.

## G. License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

*Note: This project is for educational and analytical purposes. Data has been anonymized and should be used in compliance with applicable privacy regulations.*

