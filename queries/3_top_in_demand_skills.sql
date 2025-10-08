/*

what are the most in demand skill for my roles

WHAT ARE THE MOST IN-DEMAND SKILLS FOR THE DATA ANALYSTS

    -> join job postings to inner join table similar to query 2
    -> Identify the topy 5 in-demand skills for a data analyst
    -> focus on all job postings
    -> why? retrive the topy 5 skills with the hightes demand in the job market
    -> provide insights into the most valuable skills for the job seekers


*/

SELECT
    skills,
    COUNT(skills_job_dim) AS demand_count

FROM job_postings_fact

INNER JOIN skills_job_dim
    ON job_postings_fact.job_id = skills_job_dim.job_id

INNER JOIN skills_dim
    ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE
    job_title_short = 'Data Analyst'

GROUP BY
    skills

ORDER BY
    demand_count DESC

LIMIT 5


/*

SQL → 92,628 postings

Excel → 67,031 postings

Python → 57,326 postings

Tableau → 46,554 postings

Power BI → 39,468 postings



///////////////////////////////////////////


SQL is #1: Still the backbone of data management and analysis, appearing in the highest number of postings.

Excel remains crucial: Despite more advanced tools, Excel is indispensable for business operations and reporting.

Python rising strong: Dominates for programming, automation, and data science.

Visualization is key: Tableau and Power BI show employers value professionals who can communicate data insights effectively.

Business + Tech combo: The mix of Excel (business-oriented) with Python/SQL (technical) highlights a demand for hybrid skill sets.


*/