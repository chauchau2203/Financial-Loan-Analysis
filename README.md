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
- [Lending Club Dataset](https://github.com/chauchau2203/Financial-Loan-Analysis/blob/main/financial_loan.csv) from Kaggle (dataset source now deleted).

**Key Columns:**
- `id`: Unique loan identifier
- `adress_state`: Borrower's state
- `application_type`: Type of application (eg: Individual)
- `emp_length`: Borrower’s employment length
- `emp_title`: Job title of borrower
- `grade`: Assigned loan grade
- `home_ownership`: Home ownership status of borrower
- `isssue_date`: Issue date of the loan
- `last_credit_pull_date`: When the borrower's credit report was last accessed
- `last_payment_date`: Date that the most recent loan payment received
- `loan_status`: Loan status (Fully Paid, Current, Charged Off)
- `next_payment_date`: The date of the next loan payment
- `loan_amnt`: Requested loan amount
- `member_id`: Borrower's Unique Identification
- `purpose`: Purpose of the loan
- `sub_grade`: Provides additional risk differentiation
- `term`: Term of the loan (36 months or 60 months)
- `verification_status`: Income verification status
- `annual_income`: Borrower's annual income
- `dit`: Debt to Income ratio
- `installment`: Monthly payment
- `int_rate`: Interest rate
- `loan_amount`: Loan amount
- `total_acc`: Total accounts
- `total_payment`: Total amount received to date


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

### 1. [Financial Loan Analysis.sql](https://github.com/chauchau2203/Financial-Loan-Analysis/blob/main/Financial%20Loan%20Analysis.sql)

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


### 2. [Financial Loan Dashboard.pbix](https://github.com/chauchau2203/Financial-Loan-Analysis/blob/main/Financial%20Loan%20Dashboard.pbix)

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


## E. Analysis and Results

### Overall Portfolio Performance
The loan portfolio demonstrates **strong performance** with 38,576 total loan applications and a healthy funding-to-recovery ratio. The bank has **funded $435.76M** while **receiving $473.07M** in repayments, indicating a positive return of approximately **8.6%** above the funded amount. This suggests effective loan management and collection processes.

### Risk Profile and Loan Quality
**Good vs Bad Loan Distribution:**
- The portfolio shows excellent loan quality with **86.2% classified as "Good Loans"** (Fully Paid + Current status) versus only **13.8% as "Bad Loans"** (Charged Off). This indicates strong underwriting standards and borrower selection criteria.

**Financial Impact Analysis:**

- **Good loans** generated $435.79M in collections from $370.22M funded (**17.7% return**).
- **Bad loans** only recovered $37.28M from $65.53M funded (**43.1% loss rate**).
- The overall portfolio benefits significantly from the high proportion of good loans.

### Temporal and Seasonal Trends
The monthly trend analysis reveals **consistent growth** throughout the year, with applications increasing from approximately 2.3K in January to 4.3K in December. This **87% growth** suggests either business expansion, increased market demand, or successful marketing campaigns. The steady upward trajectory indicates healthy business momentum.

### Geographic Distribution and Market Penetration
The state-wise distribution shows concentrated activity in larger population states, with certain regions displaying higher loan volumes. This geographic concentration may indicate market saturation opportunities in underserved states or successful regional strategies that could be replicated.

### Borrower Demographics and Employment Patterns
Employment Length Insights:

- Borrowers with **10+ years** of employment represent the **largest segment** (8.9K applications).
- Shorter tenure employees **(1-2 years**) show **significant representation** (4.6K and 4.4K respectively).
- This distribution suggests the bank successfully serves both established and emerging professionals.

### Loan Purpose and Financial Behavior
Debt Consolidation Dominance:
The purpose analysis reveals **debt consolidation as the primary driver** (~18K applications), followed by **credit card refinancing** (~5K). This indicates customers are actively managing their debt obligations and seeking better terms, suggesting a financially conscious customer base.

### Term Structure and Risk Management
The loan term distribution shows **73.2% are 60-month loans** (28.2K) versus **26.8% for 36-month loans** (10.3K). This preference for longer terms may indicate:
- Customer preference for lower monthly payments.
- Bank strategy to extend interest income duration.
- Potential higher risk exposure due to longer repayment periods.

### Home Ownership and Stability Indicators
The home ownership analysis shows a relatively balanced distribution between renters, mortgage holders, and homeowners. This diversity suggests the bank serves various economic segments, though the specific proportions could indicate target market focus areas.

### Interest Rate and DTI Analysis
With an **average interest rate of 12.05%** and **average DTI of 13.33%**, the portfolio reflects **moderate risk pricing**. The month-over-month changes (+3.47% interest rate, +2.73% DTI) suggest either tightening credit conditions or shifts in borrower profile.

### Key Performance Indicators by Loan Status
The detailed breakdown shows Current loans have the highest interest rate (15.10%) while Fully Paid loans average 11.64%. This suggests:
- Higher risk pricing for ongoing loans.
- Successful completion of lower-rate loans.
- Potential correlation between interest rates and repayment success.

## F. Recommendations

### Immediate Actions (0-3 months)

**Risk Management Enhancement:**

- **Monitor 60-Month Loan Concentration:** With 73.2% of loans having 60-month terms, implement enhanced monitoring for this segment to prevent concentration risk. Develop early warning indicators for potential defaults in longer-term loans.
- **Current Loan Rate Optimization:** Given that current loans carry the highest interest rate (15.10%), establish a proactive customer outreach program to prevent these high-risk accounts from transitioning to charged-off status.

**Geographic Expansion Strategy:**

- **Target Underserved States:** Leverage the geographic distribution data to identify states with low loan application volumes but favorable economic conditions for immediate market entry.
- **Replicate High-Performance Regional Strategies:** Analyze successful approaches in high-volume states and systematically deploy these strategies to emerging markets.

### Short-Term Initiatives (3-6 months)

**Portfolio Diversification:**

- **Reduce Debt Consolidation Dependency:** While debt consolidation represents ~18K applications (47% of total), develop targeted products for other purposes to reduce over-reliance on this single category.
- **Employment-Based Segmentation:** Create specialized loan products for the 8.9K applicants with 10+ years employment history, offering preferential rates to capitalize on their stability.

**Pricing Strategy Optimization:**

- **Implement Dynamic Pricing Models:** Use the correlation between interest rates and repayment success to develop more sophisticated risk-based pricing that could improve the 43.1% loss rate on bad loans.
- **DTI-Based Rate Adjustments:** With average DTI at 13.33%, establish DTI-based pricing tiers to better reflect individual risk profiles.

### Medium-Term Growth Strategies (6-12 months)

**Customer Lifecycle Management:**

- **Good Loan Customer Retention:** Develop loyalty programs for the 86.2% good loan segment to encourage repeat business and referrals, leveraging their proven repayment reliability.
- **Term Structure Rebalancing:** Introduce incentives for 36-month loans to achieve a more balanced 60/40 split instead of the current 73/27 distribution, reducing long-term risk exposure.

**Technology and Analytics Enhancement:**

- **Predictive Default Modeling:** Build machine learning models using the employment length, home ownership, and purpose data to improve early identification of potential bad loans before the 13.8% charge-off rate materializes.
- **Real-Time Portfolio Monitoring:** Implement automated alerts for when monthly growth rates exceed the current 87% annual trend to ensure sustainable expansion.

### Long-Term Strategic Initiatives (12+ months)

**Market Leadership and Innovation:**

- **Home Ownership-Based Products:** Develop specialized loan products targeting the balanced distribution of renters, mortgage holders, and homeowners to capture market share in each segment.
- **Seasonal Optimization:** Capitalize on the consistent monthly growth pattern (2.3K to 4.3K applications) by adjusting marketing spend and capacity planning to maximize the identified seasonal trends.

**Operational Excellence:**

- **Collection Process Enhancement:** Given the strong 17.7% return on good loans versus 43.1% loss on bad loans, invest in advanced collection technologies and processes to improve recovery rates on charged-off accounts.
- **Underwriting Standards Refinement:** While the 86.2% good loan rate is excellent, fine-tune criteria to potentially reduce the 13.8% bad loan rate without significantly impacting application volume.

## G. Future Work Extension and Improvement

- **Real-time Data Integration:** Automate data pipelines for real-time monitoring.
- **Advanced Analytics:** Integrate machine learning for default prediction.
- **Mobile Dashboard:** Enable Power BI mobile access.
- **Risk Modeling:** Build credit risk assessment models.
- **Cohort & Predictive Analysis:** Add borrower cohort tracking and forecasting.
- **Regulatory Reporting:** Expand for compliance and regulatory needs.
- **Visualization Enhancements:** Add drill-downs, alerts, and custom KPI tracking.
- **Data Quality:** Improve validation and integrate external economic data.



*Note: This project is for educational and analytical purposes. Data has been anonymized and should be used in compliance with applicable privacy regulations.*

