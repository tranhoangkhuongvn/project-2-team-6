# Project plan 

## Objective 
Provide insights on Dvd rental trends and performance

## Consumers 
Managers, executives and customers

## Questions 
> - Who are the top 10 customers?
> - What are the most popular categories by $ value?
> - What is the average duration of the rental?
> - Is there a correlation between film category and rental period?
> - Rental volume by country


## Source datasets 
What datasets are you sourcing from? How frequently are the source datasets updating?

| Dvd Rental | PostgreSQL database |

## Preset visualisation

![images/preset_dashboard.PNG](images/preset_dashboard.PNG)

## Solution architecture
![images/Solution-Architecture-Project-2.png](images/Solution-Architecture-Project-2.png)

## Breakdown of tasks 
Mark:
> - AWS Set up
> - Data Modelling
> - Transformation
> - Documentation

Khuong:
> - Ingestion (Airbyte)
> - Write Tests (dbt)
> - Git repository set up
> - Documentation

## Solution running on the cloud
### Airbyte
![images/Airbyte_EC2.png](images/Airbyte_EC2.png)
![images/Airbyte_UI.png](images/Airbyte_UI.png)

### Snowflake
![images/snowflake.png](images/snowflake.png)

### Preset
![images/preset_dashboard.png](images/preset_dashboard.png)