/* question ; top paying companies for my desired role 'data analyst'*/
SELECT company_dim.name , salary_year_avg , job_title 
from job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
where job_title = 'Data Analyst' and salary_year_avg > 1
group by company_dim.name , salary_year_avg , job_title
order by salary_year_avg DESC
limit 20