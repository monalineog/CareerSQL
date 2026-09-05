create database careersql;
use careersql;
CREATE TABLE dim_company (
    company VARCHAR(100) PRIMARY KEY
);
CREATE TABLE dim_skill (
    skill VARCHAR(100) PRIMARY KEY
);
CREATE TABLE dim_country (
    country VARCHAR(100) PRIMARY KEY,
    region VARCHAR(100)
);
CREATE TABLE dim_platform (
    platform VARCHAR(100) PRIMARY KEY
);
CREATE TABLE fact_job_postings (
    job_id VARCHAR(20) PRIMARY KEY,
    job_title VARCHAR(200),
    company VARCHAR(100),
    country VARCHAR(100),
    region VARCHAR(100),
    platform VARCHAR(100),
    experience_level VARCHAR(50),
    employment_type VARCHAR(50),
    salary_min_usd DECIMAL(12,2),
    salary_max_usd DECIMAL(12,2),
    remote_type VARCHAR(50),
    posting_date DATE,
    applicants_estimate INT
);
CREATE TABLE bridge_job_skills (
    job_id VARCHAR(20),
    skill VARCHAR(100)
);