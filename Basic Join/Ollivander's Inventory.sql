SELECT w.id, wp.age ,w.coins_needed,w.power
FROM Wands as w
JOIN Wands_Property as wp ON wp.code=w.code
WHERE wp.is_evil=0 AND w.coins_needed=(SELECT Min(a1.coins_needed) 
                                        FROM wands a1 
                                        JOIN wands_property b1 
                                        ON a1.code = b1.code 
                                        WHERE  wp.age = b1.age 
                                        AND w.power = a1.power) 
ORDER BY w.power DESC,wp.age DESC;