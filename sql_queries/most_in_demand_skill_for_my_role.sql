select skills_dim.skills , job_postings_fact.job_title_short , count( skills_dim.skills) as skill_count
FROM job_postings_fact
LEFT JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
left JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id

WHERE (job_title_short = 'Data Analyst' or job_title_short = 'Business Analyst')
group by skills_dim.skills , job_postings_Fact.job_title_short
order by skill_count DESC