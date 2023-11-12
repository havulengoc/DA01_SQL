--- Example 1 (Hackerrank): Revising the Select query II
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = "USA" AND POPULATION > 120000;

--- Example 2 (Hackerrank): Japanese Cities' Attributes
SELECT *
FROM City
WHERE CountryCode = 'JPN';

--- Example 3 (Hackerrank): Weather Observation Station 1
SELECT CITY, STATE
FROM STATION;

--- Example 4 (Hackerrank): Weather Observation Station 6
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE "A%" OR CITY LIKE "E%" OR CITY LIKE "I%" OR CITY LIKE "O%" OR CITY LIKE "U%";

--- Example 5 (Hackerrank): Weather Observation Station 7
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE "%A" OR CITY LIKE "%E" OR CITY LIKE "%I" OR CITY LIKE "%O" OR CITY LIKE "%U";

--- Example 6 (Hackerrank): Weather Observation Station 9
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE "A%" AND CITY NOT LIKE "E%" AND CITY NOT LIKE "I%" AND CITY NOT LIKE "O%" AND CITY NOT LIKE "U%";

--- Example 7 (Hackerrank): Employee names
select name from Employee
order by name asc;

--- Example 8 (Hackerrank): Employee salary
select name from Employee
where salary > 2000 and months < 10
order by employee_id asc;

--- Example 9 (Leetcode) Recyclable and Low Fat Products
select product_id from Products
where low_fats = 'Y' and recyclable = 'Y';

--- Example 10 (Leetcode) Find Customer Referee
select name from Customer
where referee_id <> 2 or referee_id IS NULL;

--- Example 11 (Leetcode) Big Countries
select name, area, population  from World
where area >= 3000000 or population >= 25000000;

--- Example 12 
select distinct author_id as id
from Views
where author_id = viewer_id
order by author_id asc

--- Example 13 Tesla Unfinished Parts


--- Example 14

--- Example 15
