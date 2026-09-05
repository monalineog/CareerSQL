# CareerSQL

## Project Overview

CareerSQL is a job market intelligence and skill recommendation project that analyzes job postings to identify in-demand skills, salary trends, skill combinations, work types, and job-skill matching.

## Tools & Technologies

- MySQL
- SQL
- Python
- Pandas
- Matplotlib
- Seaborn
- Google Colab

## Project Structure

```text
CareerSQL/
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_basic_analysis.sql
│   ├── 03_skill_analysis.sql
│   ├── 04_salary_analysis.sql
│   ├── 05_country_analysis.sql
│   ├── 06_job_matching.sql
│   ├── 07_skill_gap.sql
│   └── 08_career_recommendations.sql
├── data/
├── visualizations/
└── README.md
```
## visualizations

The project includes visualizations for:

- Average Salary by Experience
- Average Salary by Country
- Average Salary by Experience (Seaborn)
- Remote vs Hybrid vs Onsite Jobs
- Skill Demand vs Average Salary
- Skill Demand by Experience (Seaborn Heatmap)
- Top 5 Data Analyst Job Matches
- Top 10 Skill Combinations
- Top 10 Skills by Demand

## Key Features

- Job market skill demand analysis
- Salary analysis by country and experience level
- Remote, hybrid, and onsite job analysis
- Skill combination analysis
- Data Analyst job matching
- Skill gap identification
- Career recommendations based on job market demand

## Career Recommendations

Based on the analyzed job market data, candidates should focus on high-demand technical skills such as PyTorch, Spark, Azure, AWS, and Data Engineering. Building combinations of complementary skills can improve job opportunities. For Data Analyst roles, developing additional skills beyond SQL, Excel, and Python can help increase job-match percentages.

## Career Insights

### 1. Most Demanded Skills

PyTorch is the most demanded skill in the analyzed job postings,appearing in 165 postings. Excel follows with 159 postings while Spark, Azure, and AWS also show strong demand.

### 2. Highest-Paying Countries

Singapore has the highest average salary at approximately $129,411, followed by the United States at $129,154 and France at $128,672. Germany and Spain also show relatively high average salaries.

### 3. Experience vs Salary

Senior-level jobs have the highest average salary at approximately $126,390 followed by Mid-level jobs at $124,832. Entry-level jobs average around $123,699, while Lead-level jobs show an average of $123,649.

### 4. Work Type

Hybrid jobs are the most common in the analyzed job postings, with 257 jobs, followed by Onsite with 248 and Remote with 245.

### 5. Skill Demand vs Salary

TensorFlow has the highest average salary among the analyzed skills at approximately $128,821, followed by Spark at $127,953 and Data Engineering at $127,687. This shows that some highly demanded technical skills are also associated with higher average salaries.

### 6. Top Skill Combinations

Airflow and Redshift are the most common skill combination, appearing together in 58 job postings. Azure and Machine Learning follow with 53 postings, while PyTorch and Spark appear together in 52 postings.

### 7. Job Match & Skill Gap

The current skill set of SQL, Excel, and Python shows a maximum match of 50% with the analyzed Data Analyst job postings. JOB-400 has the highest match at 50%, followed by JOB-737 and JOB-588 at 40%. This indicates a clear skill gap and highlights the need to develop additional skills for stronger job matches.

