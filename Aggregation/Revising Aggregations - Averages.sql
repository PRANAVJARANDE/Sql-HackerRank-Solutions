SELECT AVG(POPULATION) 
FROM CITY AS c
GROUP BY DISTRICT
HAVING DISTRICT='California'