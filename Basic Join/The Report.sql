SELECT 
    CASE
        WHEN g.GRADE<8 THEN NULL
        ELSE s.Name
    END,g.Grade,s.Marks
FROM STUDENTS AS s
JOIN GRADES as g ON (g.Min_Mark<=s.Marks AND s.Marks<=g.Max_Mark)  
ORDER BY GRADE DESC,NAME ASC,MARKS ASC    