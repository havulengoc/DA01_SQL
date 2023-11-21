Exercise 1: More than 75 marks
select Name from STUDENTS
where Marks > 75
order by right(Name, 3), ID;

Exercise 2: Fix Names in a Table
select user_id, concat(upper(left(lower(name),1)), substring(lower(name) from 2 for length(name))) as name
from Users
order by user_id;

Exercise 3: Pharmacy Analytics (Part 3)
SELECT manufacturer, concat('$', round(sum(total_sales) / 1000000), ' million') as sale
FROM pharmacy_sales
group by manufacturer
order by sum(total_sales) desc, manufacturer;

Exercise 4: Average Review Ratings
SELECT extract(month from submit_date) as mth, product_id as product, round(avg(stars), 2) as avg_stars
FROM reviews
group by mth, product
order by mth, product_id;

Exercise 5: Teams Power Users
SELECT sender_id, count(message_id) as message_count 
FROM messages
where extract(month from sent_Date) = '8' and extract(year from sent_Date) = '2022'
group by sender_id
order by count(message_id) desc
limit 2;

Exercise 6: Invalid Tweets
select tweet_id from Tweets
where length(content) > 15;

Exercise 7: User Activity for the Past 30 Days I
SELECT activity_date day, COUNT(DISTINCT(user_id)) active_users
FROM activity
WHERE activity_date BETWEEN date_add('2019-07-27', INTERVAL -29 day) AND '2019-07-27'
GROUP BY activity_date

Exercise 8: Number of Hires During Specific Time Period
select count(distinct id) from employees
where extract(month from joining_date) between 1 and 7
and extract(year from joining_date) = '2022';

Exercise 9: Positions Of Letter 'a'
select position('a' in 'Amitah') from worker
where first_name = 'Amitah';

Exercise 10: Macedonian Vintages
select distinct title, substring(title, '[0-9]{4}') :: int as year 
from winemag_p2
where country = 'Macedonia';
