-- Which skills are in demand in each country, and what is the average salary for jobs requiring those skills?
select
f.country,
b.skill,
count(*) as demand_count,
avg((f.salary_min_usd + f.salary_max_usd) / 2) AS average_salary
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
group by f.country, b.skill
order by f.country, demand_count desc;

-- which skills are most in demand in each country?
select
f.country,
b.skill,
count(*) as demand_count
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
group by f.country, b.skill
order by f.country, demand_count desc;

-- which countries have the most job postings
select
country,
count(*) as job_count
from fact_job_postings
group by country
order by job_count desc;

-- average salary by country
select
country,
avg((salary_min_usd + salary_max_usd) / 2) as average_salary
from fact_job_postings
group by country
order by average_salary desc;

