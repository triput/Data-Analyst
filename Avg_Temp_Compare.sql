
/*
This script will select the appropriate data for the city of choice - Seattle, 
as well as global data, and execute an inner join so the data can be used for 
comparison purposes
*/

/*
Alter the avg_temp column in both city_data and global_data for clarity of 
each column's scope 
*/
ALTER TABLE global_data RENAME COLUMN avg_temp to Global_avg_temp;
ALTER TABLE city_data RENAME COLUMN avg_temp to Seattle_avg_temp;

SELECT
    city_data.year, 
    city_data.city_avg_temp,
    global_data.global_avg_temp
FROM city_data
INNER JOIN global_data
ON city_data.year = global_data.year
WHERE city_data.city = 'Seattle'

/* 
Results saved to Avg_Temp_Compare.csv
*/