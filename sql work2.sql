show databases;
use capstone;
show tables;
desc capstone;

SELECT price FROM capstone ORDER BY price DESC;
SELECT price FROM capstone ORDER BY price DESC;
SELECT price FROM capstone ORDER BY price ASC LIMIT 100;
SELECT price FROM capstone ORDER BY price ASC LIMIT 75;
select price from capstone;

--price ascending--
show databases;
use capstone;
show tables;
desc capstone;
select price from capstone order by  price ASC;
SELECT price FROM capstone ORDER BY price ASC LIMIT 4572;

--
show databases;
use capstone;
select all area_sqft from capstone;
SELECT city, AVG(area_sqft) AS avg_area from capstone
group by city ;
--------------------------------
SELECT c1.city, c1.name, AVG(IFNULL(c2.area_sqft, 0)) AS avg_area
FROM capstone c1
JOIN capstone c2 ON c1.city = c2.city
GROUP BY c1.city;
------table 2--------------------------------------------------
select all area_sqft from capstone;
select all name from capstone;
USE capstone;
SELECT city, AVG(IFNULL(area_sqft, 0)) AS avg_area
FROM capstone
GROUP BY city;
-----------------------------
 select *From capstone;
 SELECT id, name, location, area_sqft, washrooms, bedrooms, (washrooms + bedrooms) AS total_area
FROM (
  SELECT id, name, location, area_sqft, washrooms, bedrooms
  FROM capstone
  ORDER BY washrooms + bedrooms DESC
  LIMIT 
  3
) AS top_three
ORDER BY total_area DESC, id ASC;
-----------------------------------------

SELECT bedrooms, washrooms, COUNT(*) as count
FROM capstone
GROUP BY bedrooms, washrooms
HAVING COUNT(*) > 1
ORDER BY count DESC
LIMIT 3;
-----------------------
show databases;
select *from capstone;
SELECT bedrooms, washrooms, COUNT(*) AS count
FROM capstone
GROUP BY bedrooms, waaahroooms
ORDER BY count DESC;
--------------------------------
show databases;
SELECT *from capstone ;
select pets, 
area_sqft from capstone limit 200;
select  pets where pets = "allowed"
AND (area_sqft IS NULL OR area_sqft) = 
order BY area_sqft DESC;

