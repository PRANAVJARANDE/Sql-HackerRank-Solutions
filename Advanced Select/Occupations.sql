SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END),
    MAX(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END),
    MAX(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END),
    MAX(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END)
FROM (
    SELECT 
        Name,
        Occupation,
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
    FROM OCCUPATIONS
) AS Ranked
GROUP BY rn;
