/* 
1. Comparing city(Hyderabad,India) and global data
2. To understand trends we have to compare temp. of same year 
3. After getting desired dataset, will fill missing values
Note: Hyderabad is a city present in India and Pakistan both. I have chosen city present in India
*/
-- Query:
SELECT 
  city_data.year,
  city_data.avg_temp as city_temp,
  global_data.avg_temp as global_temp
FROM city_data, global_data
WHERE city_data.year = global_data.year	/* Selecting observations of same year */
  AND city_data.city = 'Hyderabad'
  AND city_data.country = 'India'