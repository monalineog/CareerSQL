-- We will generate overall career recommendations based on the dataset.
select
b.skill,
count(*) as demand_count,
avg((f.salary_min_usd + f.salary_max_usd) / 2) as average_salary
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
group by b.skill
order by demand_count desc
limit 10;




