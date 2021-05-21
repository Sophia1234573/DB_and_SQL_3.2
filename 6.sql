SELECT ROUND(AVG(salary), 2) avg_Salary
FROM developers AS dev
INNER JOIN developers_skills AS dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
WHERE pr.project_name = (SELECT pr.project_name
FROM projects AS pr
GROUP BY pr.project_name
ORDER BY MIN(cost) ASC
LIMIT 1);