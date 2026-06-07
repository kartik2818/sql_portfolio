select job_postings_fact.job_country , job_postings_fact.job_schedule_type , skills_dim.skills ,job_title ,count(job_title_short) as job_count
from job_postings_fact
LEFT join skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
left join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where  job_title in  ('Data Analyst' , 'Business Analyst')
and job_country in  ('Germany' ,'India' ,'United States')
group BY job_country , job_schedule_type , job_title , skills_dim.skills
order by job_count desc
LIMIT 30