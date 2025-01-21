SELECT c.company_code,c.founder,
    COUNT(DISTINCT l.lead_manager_code) AS lead_manager_count,
    COUNT(DISTINCT sm.senior_manager_code) AS senior_manager_count,
    COUNT(DISTINCT m.manager_code) AS manager_count,
    COUNT(DISTINCT e.employee_code) AS employee_count
FROM 
    Company AS c
    JOIN Lead_Manager AS l ON c.company_code = l.company_code
    JOIN Senior_Manager AS sm ON sm.lead_manager_code = l.lead_manager_code
    JOIN Manager AS m ON sm.senior_manager_code = m.senior_manager_code
    JOIN Employee AS e ON m.manager_code = e.manager_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
