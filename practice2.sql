Exercise 1: Weather Observation 3
select distinct city from station
where mod(ID, 2) = 0;

Exercise 2: Weather Observation 4 
select  count(city) - count(distinct city) from station;

Exercise 3: The blunder
select ceil(avg(salary) - avg(replace(salary, '0', ''))) from employees;

Exercise 4: Compressed Mean
select round(SUM(item_count::decimal*order_occurrences) / sum(order_occurrences),1) as mean
from items_per_order;

Exercise 5: DataScience Skills
SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id;

Exercise 6: Average Post Hiatus (Part 1)
select user_id, max(date(post_date)) - min(date(post_date)) as days_between
from posts
where date_part('year', date(post_date)) = 2021
group by user_id
having count(post_id) > 1;

Exercise 7: Cards Issued Difference
SELECT card_name, max(issued_amount) - min(issued_amount) as difference
FROM monthly_cards_issued
group by card_name
order by difference desc;

Exercise 8: Pharmacy Analytics (Part 2)
SELECT manufacturer, COUNT(drug) AS drug_count, SUM(cogs - total_sales) AS total_loss
FROM pharmacy_sales
WHERE cogs > total_sales
GROUP BY manufacturer
ORDER BY total_loss DESC;

Exercise 9: NotBoring Movies
select * from Cinema
where mod(id,2) = 1 and description != 'boring'
order by rating desc

Exercise 10: Number of Unique Subjects Taught by Each Teacher
select teacher_id, count(distinct subject_id) as cnt 
from Teacher
group by teacher_id;

Exercise 11: Find Followers Count
select user_id, count(follower_id) as followers_count from Followers
group by user_id
order by user_id;

Exercise 12: Classes More Than 5 Students
select class 
from Courses
group by class
having count(student) >= 5;
