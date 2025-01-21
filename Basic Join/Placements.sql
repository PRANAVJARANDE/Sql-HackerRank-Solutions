SELECT me.name
FROM Friends as f
JOIN Students AS me ON me.ID=f.ID
JOIN Packages AS mp ON f.ID=mp.ID
JOIN Packages AS fp ON f.Friend_ID= fp.ID
WHERE fp.salary>mp.salary
order by fp.salary;