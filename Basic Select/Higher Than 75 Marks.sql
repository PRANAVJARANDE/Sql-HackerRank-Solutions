SELECT Name FROM STUDENTS
WHERE Marks>75
ORDER BY LOWER(SUBSTRING(Name,LENGTH(Name)-2,3)) ASC, ID ASC
