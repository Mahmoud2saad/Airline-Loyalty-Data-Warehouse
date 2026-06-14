# ✈️ Airline Loyalty Program Data Warehouse & Business Intelligence Solution

## 📌 Project Overview

This project demonstrates the end-to-end design and implementation of a modern Data Warehouse and Business Intelligence solution for an Airline Loyalty Program.

The solution transforms raw customer loyalty and flight activity data into a scalable analytical platform that enables business users to monitor loyalty performance, customer behavior, flight activity, enrollment trends, and reward program effectiveness.

The project follows industry-standard Data Engineering practices including:

* Data Warehousing
* ETL Development
* Dimensional Modeling
* Data Quality Processing
* Business Intelligence Reporting
* KPI Monitoring
* Star Schema Design

---

## 🏗 Solution Architecture

```text
CSV Data Sources
       │
       ▼
ODS Layer
(Operational Data Store)
       │
       ▼
STG Layer
(Data Cleansing & Transformation)
       │
       ▼
DWH Layer
(Dimensional Model)
       │
       ▼
Power BI Semantic Model
       │
       ▼
Interactive Business Dashboard
```

---

# 📊 Business Scenario

Airlines rely heavily on loyalty programs to retain customers and increase customer lifetime value.

This project analyzes:

* Customer demographics
* Loyalty membership history
* Flight activity
* Loyalty points accumulation
* Loyalty points redemption
* Enrollment and cancellation trends
* Customer lifetime value (CLV)

The objective is to provide actionable insights for business stakeholders through a centralized analytical platform. 

---

# 📂 Dataset Overview

The solution is built using two primary datasets.

## 1️⃣ Customer Flight Activity

Contains monthly customer flight performance and loyalty point transactions.

### Key Attributes

| Column                      | Description                |
| --------------------------- | -------------------------- |
| Loyalty Number              | Unique customer identifier |
| Year                        | Activity year              |
| Month                       | Activity month             |
| Total Flights               | Total booked flights       |
| Distance                    | Distance traveled (KM)     |
| Points Accumulated          | Earned loyalty points      |
| Points Redeemed             | Redeemed loyalty points    |
| Dollar Cost Points Redeemed | Redemption cost in CAD     |

---

## 2️⃣ Customer Loyalty History

Contains customer profile and loyalty membership information.

### Key Attributes

| Column            | Description                   |
| ----------------- | ----------------------------- |
| Country           | Customer country              |
| Province          | Customer province             |
| City              | Customer city                 |
| Postal Code       | Customer postal code          |
| Gender            | Customer gender               |
| Education         | Education level               |
| Salary            | Annual salary                 |
| Marital Status    | Marital status                |
| Loyalty Card      | Membership tier               |
| CLV               | Customer Lifetime Value       |
| Enrollment Type   | Membership acquisition source |
| Enrollment Date   | Program enrollment date       |
| Cancellation Date | Program cancellation date     |



---

# 🧱 Data Warehouse Design

## Schema Type

The warehouse is implemented using a **Star Schema** optimized for analytical workloads and reporting performance. 

---

## Fact Tables

### FactFlightsActivity

Stores monthly flight performance metrics.

### Measures

* Total Flights
* Distance
* Points Accumulated
* Points Redeemed
* Dollar Cost Redeemed

---

### FactLoyaltyHistory

Stores loyalty membership metrics.

### Measures

* Salary
* Customer Lifetime Value (CLV)



---

## Dimension Tables

### DimDate

Supports:

* Year
* Quarter
* Month
* Season

### DimGender

Customer gender classification.

### DimLocation

Geographical hierarchy:

* Country
* Province
* City
* Postal Code

### DimEnrollmentInfo

Membership information:

* Loyalty Card
* Enrollment Type

### DimPersonalInfo

Customer demographics:

* Education
* Marital Status



---

# 🔄 ETL Pipeline (SSIS)

The ETL solution is implemented using SQL Server Integration Services (SSIS).

## Package 1 — ODS Layer

### Responsibilities

* Extract CSV files
* Initial validation
* Load raw operational data

---

## Package 2 — STG Layer

### Responsibilities

* Data cleansing
* Data standardization
* Transformation logic
* Dimension preparation

---

## Package 3 — DWH Layer

### Responsibilities

* Lookup operations
* Surrogate key generation
* Fact table loading
* Dimension loading
* Data warehouse population



---

# 📈 Business Intelligence Layer

Power BI serves as the semantic and visualization layer of the solution. 

---

## Dashboard Pages

### 🏠 Home Page

Provides navigation across all report sections.

---

### 📊 Data Overview

KPIs and historical trends:

* Accumulated Points
* Redeemed Points
* Program Revenue
* Program Costs
* Customer Enrollments
* Customer Cancellations



---

### 👥 Customer Analysis

Customer segmentation and demographic analysis:

* Gender Distribution
* Education Analysis
* Marital Status Analysis
* Geographic Distribution
* Loyalty Card Performance



---

### 🎁 Points Analysis

Loyalty points performance:

* Points Earned
* Points Redeemed
* Redemption Efficiency
* Customer Reward Behavior

---

### 📅 Enrollment Analysis

Membership lifecycle analytics:

* Enrollment Trends
* Cancellation Trends
* Retention Analysis
* Membership Growth



---

# 🛠 Technology Stack

| Category      | Technology    |
| ------------- | ------------- |
| Database      | SQL Server    |
| ETL           | SSIS          |
| Data Modeling | Star Schema   |
| Reporting     | Power BI      |
| Data Source   | CSV Files     |
| Development   | Visual Studio |
| Language      | T-SQL         |

---

# 🚀 Key Data Engineering Skills Demonstrated

✅ Dimensional Modeling

✅ Star Schema Design

✅ Data Warehouse Development

✅ ETL Pipeline Development

✅ SQL Server Integration Services (SSIS)

✅ Data Cleansing & Transformation

✅ Fact & Dimension Modeling

✅ Surrogate Key Management

✅ Power BI Development

✅ KPI Design

✅ Business Analytics

---

# 📷 Dashboard Preview

```text
Home Page
├── Data Overview
├── Customer Analysis
├── Points Analysis
└── Enrollment Analysis
```

*(Add Power BI screenshots here)*

---

# 📌 Future Enhancements

* Incremental ETL Loading
* Slowly Changing Dimensions (SCD Type 2)
* SSIS Logging Framework
* Data Quality Monitoring
* Azure Data Factory Migration
* Automated CI/CD Deployment
* Power BI Service Deployment
* Real-Time Loyalty Analytics

---

# 👨‍💻 Author

**Mahmoud Saad**
Junior Financial Analytics Engineer | Aspiring BI Developer & Data Engineer

### Skills

* SQL Server
* SSIS
* Power BI
* Data Warehousing
* ETL Development
* Data Modeling
* Business Intelligence
* Analytics Engineering


