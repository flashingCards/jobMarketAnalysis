/*
Question: What skills are required for the top-paying data analyst jobs?
    --> Use the top 10 highest-paying Data Analyst jobs from first query
    --> Add the specific skills required for these roles
    --> Why? It provides a detailed look at which high-paying jobs demand certain skills,
    --> helping job seekers understand which skills to develop that align with top salaries
*/

WITH top_paying_jobs AS (

    SELECT
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name

    FROM
        job_postings_fact

    LEFT JOIN company_dim -- joining to company_dim table to get
        ON job_postings_fact.company_id = company_dim.company_id

    WHERE
        job_title_short = 'Data Analyst'
        AND job_location = 'Anywhere'
        AND salary_year_avg IS NOT NULL

    ORDER BY salary_year_avg DESC

    LIMIT 10
)

SELECT *

FROM top_paying_jobs