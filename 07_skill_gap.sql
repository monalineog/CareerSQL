/* We will compare the user’s skills with the required skills for each Data Analyst job.
Assuming the user has:
SQL
Excel
Python
For each job, we can calculate how many required skills match the user’s skills and identify the missing skills.*/
select
    f.job_id,
    f.job_title,
    count(*) as total_skills,
    sum(
       case
            when b.skill in ('SQL', 'Excel', 'Python')
            then 1
           else 0
        end
    ) as matched_skills,
   round(
        sum(
            case
               when b.skill in ('SQL', 'Excel', 'Python')
                then 1
                else 0
            end
        ) * 100.0 /count(*),
        2
    )as match_percentage
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
where f.job_title = 'Data Analyst'
group by f.job_id, f.job_title
order by match_percentage desc;

/*Now we will improve the previous query so that a single result shows:
Total required skills
User’s matched skills
Match percentage
Missing skills

User’s skills:
SQL
Excel
Python*/

select
f.job_id,
count(*) as total_skills,
sum(b.skill in ('SQL', 'Excel', 'Python')) as matched_skills,
count(*) - sum(b.skill in ('SQL', 'Excel', 'Python')) as missing_skills,
round(
        sum(b.skill in ('SQL', 'Excel', 'Python')) * 100 / count(*),
        2
    ) as match_percentage
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
where f.job_title = 'Data Analyst'
group by f.job_id
order by match_percentage desc;
select
f.job_id,
b.skill as missing_skill
from fact_job_postings f
join bridge_job_skills b
on f.job_id = b.job_id
where f.job_title = 'Data Analyst'
and b.skill not in ('SQL', 'Excel', 'Python')
order by f.job_id, b.skill;
