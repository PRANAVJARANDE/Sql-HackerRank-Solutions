SELECT distinct CITY FROM STATION
WHERE LOWER(SUBSTRING(CITY,LENGTH(CITY),1)) NOT IN ('a','e','o','i','u')