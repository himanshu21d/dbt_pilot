# Airbnb Berlin Data Transformation Project

## Project Overview
This project involves designing and implementing a data transformation and modeling solution using Airbnb data from Berlin. The primary tools used were **dbt (Data Build Tool)** for data transformation and **Snowflake** for data storage, ensuring high data quality, consistency, and efficiency.

## Objectives
- Transform raw Airbnb data into structured, analysis-ready datasets.
- Ensure data consistency, accuracy, and scalability.
- Automate the data extraction, transformation, and loading (ETL) process.
- Utilize **dbt** and **Snowflake** to create a robust data pipeline.

## Technologies Used
- **dbt (Data Build Tool)**: To manage and automate data transformations.
- **Snowflake**: Cloud-based data warehouse for efficient storage and processing.
- **SQL**: Used for querying and data modeling.
- **PostgreSQL**: Utilized for structuring and managing the data.

## Project Structure
```plaintext
.
├── models/                    # dbt models directory
│   ├── staging/               # Staging models to clean and organize raw data
│   ├── marts/                 # Final models for reporting and analysis
├── snapshots/                 # dbt snapshots for tracking changes over time
├── dbt_project.yml            # dbt project configuration file
├── README.md                  # Project readme (this file)
└── run_results.json           # dbt run results for pipeline tracking
