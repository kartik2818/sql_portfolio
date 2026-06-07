SELECT job_postings_fact.job_via , job_postings_fact.job_schedule_type , job_postings_fact.job_title, salary_year_avg , count(job_postings_fact.job_title_short) as job_count
FROM job_postings_fact

where job_postings_fact.job_title in ('Data Analyst' , 'Business Analyst') and (salary_year_avg > 1 ) 
GROUP by job_postings_fact.job_via  , job_postings_fact.job_schedule_type , job_postings_fact.job_title, job_postings_fact.salary_year_avg
ORDER by job_count DESC
limit 100