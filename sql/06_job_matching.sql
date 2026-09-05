-- We will select a job title and see which skills are required for that job.
select
f.job_title,
b.skill
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
where f.job_title = 'Data Analyst'
group by b.skill
order by b.skill;

-- What skills are required for Data Analyst jobs?
select
b.skill,
count(*) as demand_count
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
where f.job_title = 'Data Analyst'
group by b.skill
order by demand_count desc;

-- How many of the job’s total required skills match the user’s skills, eg : data analyst?
select
f.job_id,
f.job_title,
count(*) as total_skills
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
where f.job_title = 'Data Analyst'
group by f.job_id, f.job_title;

