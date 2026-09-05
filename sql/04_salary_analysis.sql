-- average salary by country
select
country,
avg((salary_min_usd + salary_max_usd) / 2) as average_salary
from fact_job_postings
group by country
order by average_salary desc;

-- Experience Level vs Average Salary
select
experience_level,
avg((salary_min_usd + salary_max_usd) / 2) as average_salary
from fact_job_postings
group by experience_level
order by average_salary desc;

-- Which skills have jobs with higher average salaries?
select
b.skill,
avg((f.salary_min_usd + f.salary_max_usd) / 2) AS average_salary
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
group by b.skill
order by average_salary desc;

-- Top 10 highest-paying skills
select
b.skill,
avg((f.salary_min_usd+ f.salary_max_usd) / 2) AS average_salary
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
group by b.skill
order by average_salary desc
limit 10;

-- which skills are high demanding along with high salary
select
b.skill,
count(*) as demand_count,
avg((f.salary_min_usd + f.salary_max_usd) / 2) AS average_salary
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
group by b.skill
order by demand_count desc;