# esg-stock-market-performance-analysis
Analyzing ESG ratings and stock market performance using Python, SQL, APIs, and Data Studio.


# 🌱 ESG & Market Performance Intelligence Dashboard

## Project Overview

This project explores the relationship between Environmental, Social, and Governance (ESG) performance and stock market returns within the industrial sector.

Using ESG ratings, stock market performance metrics, and external financial data from Yahoo Finance, the project investigates whether companies with stronger ESG performance also achieve stronger market performance. The analysis combines data preparation, exploratory data analysis, API enrichment, and business intelligence dashboard development to generate actionable insights.

---

## Business Questions

* How are ESG scores distributed across industrial companies?
* Do high ESG companies achieve stronger stock returns?
* Which subindustries demonstrate the strongest ESG performance?
* Is there a relationship between ESG scores and 52-week stock returns?
* How can external financial data enrich ESG analysis at the company level?

---

## Dataset

### Primary Dataset

Industrial Sector ESG & Stock Market Dataset

* 700+ industrial companies
* ESG scores and market performance metrics
* Industry and subindustry classifications
* 52-week stock return performance

Dataset Source:

[Industrial Sector ESG Dataset (Kaggle)](https://www.kaggle.com/datasets/jenniferaduffy/industrial-sector-esg-ratings-and-stock-market-data)

### External Data Enrichment

Yahoo Finance API (yfinance)

Additional company-level financial data was retrieved for 322 companies, including:

* Current stock price
* Market capitalization

---

## Project Workflow

### Extract

* ESG and stock market data from Kaggle
* Financial data from Yahoo Finance API

### Transform

* Data cleaning and preparation
* Missing value handling
* Feature selection
* ESG categorization
* ESG ranking generation

### Load

* Analysis-ready datasets
* API-enriched company dataset

### Analyze

* ESG distribution analysis
* Industry benchmarking
* Correlation analysis
* Company-level exploration

### Visualize

* Interactive dashboard development in Data Studio

---

## Tools & Technologies

### Programming & Analysis

* Python
* Pandas
* NumPy
* SQL

### Data Visualization

* Matplotlib
* Seaborn
* Looker Studio

### Data Sources & Integration

* Yahoo Finance API (yfinance)
* REST APIs

### Data Management

* Google Sheets
* GitHub

---

## Key Analysis Components

### ESG Distribution Analysis

Analyzed the distribution of ESG scores across industrial companies and categorized firms into Low, Medium, and High ESG groups.

### Industry Benchmarking

Identified leading subindustries based on average ESG performance and compared ESG outcomes across industrial sectors.

### ESG vs Stock Performance

Investigated the relationship between ESG scores and 52-week stock returns using correlation analysis and visualization techniques.

### Company Spotlight Analysis

Developed company-level exploration features incorporating:

* ESG Score
* ESG Category
* ESG Rank
* Current Stock Price
* Market Capitalization
* 52-Week Return Performance

---

## Key Findings

* High ESG companies achieved the strongest average 52-week stock returns.
* ESG performance varies significantly across industrial subindustries.
* Electronic Components emerged as the leading subindustry based on ESG performance.
* ESG scores showed only a weak relationship with short-term stock returns.
* API enrichment enabled deeper company-level ESG and financial analysis.

---

## Repository Structure

```text
├── data/
│   ├── raw_data/
│   ├── processed_data/
│
├── notebooks/
│   ├── ESG_analysis.ipynb
│
├── sql/
│   ├── analysis_queries.sql
│
├── dashboard/
│   ├── dashboard_assets/
│
├── README.md
```

---

## Future Improvements

* Add historical stock price analysis
* Incorporate additional financial indicators
* Expand analysis to multiple sectors
* Automate data refresh through API integration
* Deploy dashboard with automated updates

---

## Dashboard

Dashboard screenshots and interactive dashboard link will be added soon.

---

## Author

**Malynn Buranawichian**

Aspiring Data Analyst passionate about Business Intelligence, Data Visualization, ESG Analytics, and data-driven decision making.
