SELECT h.hacker_id,h.name,SUM(s.maxsc) 
FROM Hackers as h
INNER JOIN (
    SELECT MAX(ss.score) as maxsc,ss.hacker_id
    FROM Submissions as ss
    GROUP BY ss.challenge_id,ss.hacker_id
) AS s ON h.hacker_id=s.hacker_id
GROUP BY h.hacker_id,h.name
HAVING SUM(s.maxsc)>0
ORDER BY SUM(s.maxsc) DESC,h.hacker_id ASC