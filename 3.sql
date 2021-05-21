SELECT SUM(dev.salary) as salary_java_developers
FROM skills AS sk
INNER JOIN developers_skills as dev_sk
ON sk.id = dev_sk.skills_id
INNER JOIN developers AS dev
ON dev.id = dev_sk.developer_id
GROUP BY sk.branch
HAVING sk.branch='Java';