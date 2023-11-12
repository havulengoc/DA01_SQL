--- Example 1 (Hackerrank): Revising the Select query II
/*
Query the names of all American cities in CITY with populations larger than 120,000. The CountryCode for America is USA.

## Input Format

+-------------+--------------+
| Field       | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |
+-------------+--------------+
*/

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
