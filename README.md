# SQL Portfolio - DA/BA Job Market Analysis

Yo, I’m Kartik. I built these 4 queries in Postgres to answer the exact questions I had while job hunting for Data Analyst/BA roles.

Dataset: Luke Barousse’s job postings data.

### 📂 The 4 Queries

**1. how_many_jobs_are_there_for_my_desired_role.sql**  
**Q:** How many DA/BA jobs are there in my target locations?  
**Query logic:** Counts jobs by `job_country`, `job_schedule_type`, `skills`, `job_title`. Filtered to `DA/BA` roles in `Germany, India, United States`.  
**Why I wrote this:** I only want to apply where jobs actually exist. Added countries to sum it up to my desired location.

**2. most_in_demand_skill_for_my_role.sql**  
**Q:** What skills are companies asking for most in DA/BA roles?  
**Query logic:** Counts skill frequency using 3-table JOIN. `WHERE job_title_short = 'Data Analyst' OR 'Business Analyst'`.  
**Why I wrote this:** To figure out what to learn first. Data > guesswork.

**3. the_top_paying_companies_for_my_role.sql**  
**Q:** Which companies pay the most for Data Analysts?  
**Query logic:** Joins `job_postings_fact` + `company_dim`, filters `job_title = 'Data Analyst'` and `salary_year_avg > 1`, orders by salary DESC.  
**Why I wrote this:** Targeted applications. No point applying blind.

**4. which_recruiter_site_has_the_most_job_openings_for_my_desired_role.sql**  
**Q:** Which job boards post the most DA/BA jobs?  
**Query logic:** Groups by `job_via` site + schedule type, counts jobs where `salary_year_avg > 1`.  
**Why I wrote this:** Stop wasting time on dead job boards. Focus where postings are highest.

### 🛠 Tech + SQL I used
- **Database:** PostgreSQL 15
- **Tool:** VS code
- **Concepts:** LEFT JOINs across 3 tables, WHERE filters, GROUP BY for breakdowns, ORDER BY + LIMIT for top results
- **Data cleaning:** `salary_year_avg > 1` to remove NULLs/fake salary entries

### 💡 My approach
1. Start with a real job-hunting question
2. Filter to DA/BA roles only - no noise
3. Break down by country, skill, company, job board for actionable insights
4. Write queries I can explain in interviews

### 🚀 Run it yourself
1. Load dataset into Postgres
2. Open any `.sql` file in VS code
3. Change countries in Query 1 to your target locations

**Built by Kartik** while learning SQL for DA roles
