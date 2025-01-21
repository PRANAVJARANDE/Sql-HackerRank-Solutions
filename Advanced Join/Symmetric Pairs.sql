(SELECT f1.X, f1.Y
FROM Functions AS f1
GROUP BY f1.X,f1.Y 
HAVING COUNT(*)>1
UNION
(SELECT f1.X, f1.Y
FROM Functions AS f1
WHERE EXISTS(
    SELECT X,Y
    FROM Functions
    WHERE f1.Y = X AND f1.X = Y
  )
ORDER BY X;
