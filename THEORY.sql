--- SELECT
select * from actor; --- Show data from all columns & rows

SELECT first_name, last_name from actor; --- Show data from the chosen columns

SELECT first_name AS TEN_KH, last_name as HO_KH from actor ;

----- Challenge 1
select * from customer;
select first_name, last_name, email from customer;

--- ORDER BY (Arrange data in the desired order)
select * from actor
order by first_name;

select * from actor
order by first_name desc;

select * from actor
order by first_name desc, actor_id desc;

select * from payment order by customer_id, amount desc;

select * from payment order by customer_id, amount desc, payment_date desc;

--- DISTINCT
select distinct first_name from actor order by first_name;

----- Challenge 2
select distinct amount from payment order by amount;

--- LIMIT
/* At the end of the query */
select * from payment order by amount desc limit 10;

--- WHERE
select * from payment where amount = 10.99;

select * from payment where amount >= 10.99;

select * from actor where first_name = 'Nick';

select * from actor where first_name IS NULL;

--- AND/OR
select * from payment
where amount > 4 AND amount < 9;

select * from payment
where amount > 9 OR amount < 4;

----- Challenge
select * from payment where customer_id = 322 or customer_id = 346 or customer_id = 354
and amount < 2 or  amount > 10 order by customer_id, amount desc;

--- BETWEEN
select * from payment where amount between 2 and 9;

--- IN
select * from payment where payment_id = 16055 or payment_id = 16061 or payment_id = 16065 or payment_id = 16068;

--- LIKE
select * from actor
where first_name like 'N%';

--- AGGREGATE FUNCTION
select
    max(amount) as max_amount,
    min(amount) as min_amound,
    sum(amount) as total_amount,
    avg(amount) as average_amount,
    count(*) as total_record,
    count(distinct customer_id) as total_record_customer
from payment
where payment_date between '2020-01-01' and '2020-02-01'
and amount > 0;

--- GROUP BY
select customer_id,
       sum(amount) as total_amount
from payment
group by customer_id;

select * from film;

select film_id,
max(replacement_cost) as max_cost,
min(replacement_cost) as min_cost,
avg(replacement_cost) as avg_cost,
sum(replacement_cost) as sum_cost
from film
group by film_id;

--- HAVING
select customer_id,
       sum(amount) as total_amount
from payment
group by customer_id
having sum(amount) > 100;

select customer_id, date(payment_date),
avg(amount) as avg_amount,
count(payment_id)
from payment
where date(payment_date) in ('2020-04-28', '2020-04-29', '2020-04-30')
group by customer_id, date(payment_date)
having count(payment_id) > 1
order by avg(amount) dsc;
