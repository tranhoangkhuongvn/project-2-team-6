# Project 2

## Context 

Over the past 4 weeks, you have learnt: 
- How to build data integration pipelines (extract load) using data integration tools like Airbyte
- How to use cluster compute engines to transform data i.e. Snowflake and Databricks (Spark) 
- How to create DAGs for your transformations using dbt and databricks workflows
- How to create data quality tests for your transformations using dbt tests and great expectations 
- How to perform data modelling using techniques such as Dimensional Modelling and One Big Table (OBT)

## Goal

- Work in a team to create a big data ETL pipeline using patterns and concepts covered previously. 
- Your big data ETL pipeline should serve the goal of providing useful information to end users such as a data analyst or data scientist. 
- Your data pipeline must have the potential to scale to handle terrabytes or petabytes of data through scale-out cluster compute (e.g. Databricks Spark or Snowflake). However, for the purposes of the project, you are not required to use terrabyte or petabyte size datasets. 
- You may choose any dataset(s) from the sample OLTP databases below. 
- Model your data using a data modelling technique such as dimensional modelling to address a business question.
- Your ETL pipeline should have data quality tests and logging. 
- Semantic data model and visualizations.
- Deploy and schedule your ETL pipeline on the cloud. 
- Provide documentation of your entire project, including architectural and ER Diagrams.
- Present and demo your working solution to the class. 

You may choose from one of the data sources below: 

|Data source name|URL|
|--|--|
|DVD Rental Database| https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/| 
|Northwind Store|https://github.com/pthom/northwind_psql| 

## Timeline 

**Total duration: 1 week**

- **09/10/2023**: Provide a project plan 
    - Project plan should include: 
        - Objective of the project (What would you like people to do with the data you have produced?) 
        - Consumers of your data (What users would find your dataset useful?)
        - Datasets your team have selected (What datasets are you sourcing from?)
        - Business process modelling (What business process are you going to model?)
        - Solution architecture (How does data flow from source to serving?)
        - Breakdown of tasks (How is your project broken down? Who is doing what?)
- **10/10/2023 - 16/10/2023**: Work on your project in class (and outside of class) 
- **17/10/2023**: Project submission 

## Project submission

:arrow_down: Please submit your GitHub repository link to the Project Submission Form below. Please ensure that your GitHub repository is Public so that we are able to access it. 

[![Project Submission Form](../admin/submit-feedback.png)](https://forms.gle/Ueph3b4iaEVHRFPK9)


## Learning objectives 

By the end of this project, you will have hopefully learnt the following: 

1. Working in teams using Git (git commits, push, branching and pull requests)
2. Dividing work effectively between team members in data engineering projects 
3. Apply full or incremental extraction techniques to your data source(s) using a data integration tool
4. Apply full or incremental or upsert loading techniques to your target database or data lake using a data integration tool
5. Apply data transformation and enrichment techniques to your data using a big data transformation tool 
6. Apply data modelling techniques to transform your data for business use-cases 
8. Apply logging techniques to enable easy tracking of the pipeline status 
9. Apply data quality tests to ETL/ELT steps 
10. Deploy the ETL/ELT solution to the cloud 


## Requirements and rubric 

<table>
    <tr>    
        <td>
            Using a data integration tool (e.g. Airbyte, Fivetran), extract data using either full extract or incremental extract. 
            <li>A full extract refers to a full read of a file, a full read of a database table, or a full read from an API endpoint. </li>
            <li>An incremental extract refers to reading a database table with a filter condition on a timestamp column e.g. `where event_date > '2020-01-01'`.</li>
        </td>
        <td>
            <li>Full extract: 10%</li>
            <li>Incremental extract: 15%</li>
            <li>+ (Bonus) Change Data Capture (CDC): 5%</li>
        </td>
    </tr>
    <tr>    
        <td>
            Transform data using big data techonologies (i.e. Databricks Spark or Snowflake SQL). Transformations should use the following techniques: 
            <li>Aggregation function e.g. `avg`, `sum`, `max`, `min`, `count`, `rank`</li>
            <li>Grouping i.e. `group by`</li>
            <li>Window function e.g. `partition by`</li>
            <li>Calculation e.g. `column_A + column_B`</li>
            <li>Data type casting</li>
            <li>Filtering e.g. `where`, `having`</li>
            <li>Sorting</li>
            <li>Joins/merges</li>
            <li>Unions</li>
            <li>Renaming e.g. `select col_a as my_col_a` </li>
        </td>
        <td>
            <li>3 transformation techniques: 5%</li>
            <li>5 transformation techniques: 7%</li>
            <li>7 transformation techniques: 10%</li>
        </td>
    </tr>
    <tr>    
        <td>
            Data modelling techniques (i.e. dimensional modelling): 
            <li>At least 1 fact table</li>
            <li>At least 3 dimension tables</li>
            <li>(Bonus) Type 2 Slowly changing dimension (SCD)</li>
            <li>(Bonus) Advanced fact tables</li>
            <li>(Bonus) One big table for BI consumption</li>
        </td>
        <td>
            <li>At least 1 fact table, and 3 dimensional tables: 10%</li>
            <li>+ (Bonus) Type 2 Slowly changing dimension (SCD Type 2): 5%</li>
            <li>+ (Bonus) Advanced fact tables (snapshot or accumulating fact table): 5%</li>
            <li>+ (Bonus) One big table for BI consumption: 5%</li>
        </td>
    </tr>
    <tr>    
        <td>
            Semantic modelling and visualization (e.g. Preset, Tableau, Power BI, Looker):
            <li>Create a semantic dataset that connects to your data warehouse tables</li>
            <li>Create at least 2 semantic layer metrics</li>
            <li>Create at least 2 charts to visualize data</li>
        </td>
        <td>
            <li>Semantic model in BI tool with 2 or more metrics: 5%</li>
            <li>At least 2 charts or dashboards to visualize data: 5%</li>
        </td>
    </tr>
    <tr>    
        <td>
            Write data quality tests for transformation tasks (e.g. dbt tests, great expectations)
        </td>
        <td>
            <li>2 data quality tests: 5% </li>
            <li>5 data quality tests: 10% </li>
        </td>
    </tr>
    <tr>    
        <td>
            Create dependencies between data transformation tasks, and between data integration and data transformation (e.g. DBT, Databricks Workflow). 
        </td>
        <td>
            <li>Dependencies between data transformation tasks (e.g. DBT, Databricks Workflow): 10%</li>
        </td>
    </tr>
    <tr>
        <td>
            Using git for collaboration: 
            <li>Git commits and git push</li>
            <li>Git branching</li>
            <li>Pull request and review</li>
        </td>
        <td>
            <li>Git commits and push: 2%</li>
            <li>+ Git branching: 1.5%</li>
            <li>+ Pull request and review: 1.5%</li>
        </td>
    </tr>
    <tr>    
        <td>
            Deploy solution to Cloud services (provide screenshot evidence of services configured/running): 
            <li>Data integration service (e.g. Airbyte, Fivetran) - screenshot of configured tasks</li>
            <li>Data transformation (e.g. dbt sql, databricks notebook)</li>
            <li>Data Warehouse (e.g. Snowflake) or Data Lakehouse (e.g. Databricks) depending on your choice</li>
            <li>Data orchestration service (e.g. ECS, Databricks Workflows) </li>
        </td>
        <td>
            Entire solution hosted on cloud services: 15% 
        </td>
    </tr>
    <tr>    
        <td>
            Project structure and documentation
            <li>Clear project structure using a mono-repo approach with folders such as `data transformation`, `data integration`, `data orchestration` for the various components</li>
            <li>Code documentation using <a href="https://realpython.com/documenting-python-code/#documenting-your-python-code-base-using-docstrings">Python docstrings and comments</a> or SQL comments where reasonable</li>
            <li>README file at the root of the repository explaining the project context, architecture diagrams, and installation/running instructions. See <a href="https://github.com/matiassingers/awesome-readme">here</a> for examples.</li>
            <li><a href="https://www.visual-paradigm.com/guide/data-modeling/what-is-entity-relationship-diagram/">ER Diagram</a> of your data model for end-users to consume  for examples.</li>
        </td>
        <td>
            <li>Detailed markdown documentation explaining the project context, architecture diagrams, and installation/running instructions: 2.5%</li>
            <li>+ ER diagram of your data model: 2.5%</li>
        </td>
    </tr>
</table>


## Tips

### Project management 
- **Divide and conquer**: Find ways to parallelise the work you do as a team. For example, assuming an EL/T pattern: 
    - Step 1 (In parallel):
        - Person A and B pair program on the Extract and Load pipeline 
        - Person C and D pair program on the Transform pipeline 
    - Step 2 (In parallel):
        - Person A and C pair program on stitching the ELT pipeline together, adding logging and creating the Dockerfile for the docker image 
        - Person B and D pair program on creating the required AWS services (e.g. RDS, ECR, S3, ECS)
    - Step 3 (In parallel):
        - Person A and B pair program on writing unit tests, documentation, and preparing slides for the presentation 
        - Person C and D pair program on deploying the solution to AWS 
- **Don't overthink it**: We're not looking for the perfect solution with every minor detail resolved. It is okay to incur [technical debt](https://www.productplan.com/glossary/technical-debt/) to get to the end goal quickly for the project due to time constraints. In the real world, we would come back later to pay down the technical debt we've incurred by fixing the loose ends. 
- **Stick to the requirements and rubric**: We will be assessing your project based on the requirements in the rubric. Aim to tick off items in the rubric before looking to go beyond the scope. 
- **Give it a good go, but know when to ask for help**: Always have a good go before asking for help as that is the best way you will exercise your problem solving muscles. However, if you find yourself spending more than 20-30 minutes on a single challenging problem, with no clear idea of how you will solve it, then reach out to your teammates or the teaching staff for help. 

### High quality projects
- **Provide a succinct and comprehensive README**: readers of your personal project will always start with the README to know where to begin. The goal of the README is to provide the reader an understanding of the business problem you are trying to solve, how your solution goes about solving it (solution architecture diagram), and how to get started and run your code. There are plenty of great README examples here: https://github.com/matiassingers/awesome-readme

- **Include an architecture diagram in your README to explain the components of your project**: data engineering is a backend role, and there's often not a flashy front-end thing you can show to impress people. Therefore, an architecture diagram is great at giving both technical and non-technical readers an understanding of the solution you've built. Use a tool like https://www.draw.io/ to create your architecture diagrams.

- **Break your project down into components and folders**: technical readers of your project will want to see that you have broken down the project into logical folders so that the code appears organized. There's nothing worse than clicking on a github link and seeing 40 files at the root of the repository and the reader asking themselves "where do I start?". Here is a very basic example: https://github.com/Data-Engineer-Camp/modern-elt-demo

- **Include bells and whistles to impress the reader**: Most projects will have the common things like ETL scripts (e.g. SQL, Python, Airflow, dbt, etc) covered. To go the extra mile and stand out, you should also include things like data quality tests (e.g. dbt tests, great expectations, soda), linting scripts (e.g. sqlfluff, black), CI pipelines that check for linting and unit tests for ETL code before code can be merged to main (e.g. github actions). Include instructions on how to run those tests or linting or CI pipelines in your README file and include screenshots of the success or failure output to give the reader an example of what they should see if they run it themselves.

- **Run it all on the cloud**: Employers these days are also wanting to see data engineers understand how to deploy their solution on the cloud (e.g. AWS, Azure GCP). So try to include (1) cloud services in your solution architecture diagram, and (2) instructions in your README on how to host your ETL solution on a cloud provider. Bonus points if you can script all the infrastructure deployment steps through an Infrastructure as Code (IaC) tool like terraform, but it's not super necessary to know how to do this as most companies would have dedicated cloud engineers to support you with that.

