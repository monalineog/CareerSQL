-- jobs by country
select
country,
count(*) as job_count
from fact_job_postings
group by country
order by job_count desc;
-- jobs by platform
select
    platform,
    count(*) as job_count
from fact_job_postings
group by platform
order by job_count desc;
-- employment type
select
    employment_type,
    count(*) as job_count
from fact_job_postings
group by employment_type
order by job_count desc;
-- remote vs hybrid vs onsite
select
    remote_type,
    count(*) as job_count
from fact_job_postings
group by remote_type
order by job_count desc;