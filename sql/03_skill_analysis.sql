-- top 10 demanded skills
select 
    skill,
    count(*) as demand_count
from bridge_job_skills
group by skill
order by demand_count desc
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

-- At which experience level are different skills most in demand?
select
f.experience_level,
b.skill,
count(distinct f.job_id) as demand_count
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
group by f.experience_level, b.skill
order by f.experience_level, demand_count desc;

-- top 3 Skills for Each Experience Level
select
    experience_level,
    skill,
    demand_count
from
(
select
        f.experience_level,
        b.skill,
        count(*) as demand_count,
        row_number() over (
            partition by f.experience_level
            order by count(*) desc
        ) as rank_no
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
group by f.experience_level, b.skill
) as result
where rank_no <= 3
order by experience_level, rank_no;

-- Which skills are most commonly required for different job titles?
select
f.job_title,
b.skill,
count(*) as demand_count
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
group by f.job_title, b.skill
order by f.job_title, demand_count desc;

