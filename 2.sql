SELECT pr.project_name
FROM developers AS dev
INNER JOIN developers_skills AS dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.project_name
ORDER BY SUM(dev.salary) DESC
LIMIT 1;