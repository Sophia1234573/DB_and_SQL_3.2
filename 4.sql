ALTER TABLE projects
ADD COLUMN cost INT;

UPDATE projects
SET cost = (
SELECT SUM(salary) sumSalary
FROM developers AS dev
INNER JOIN developers_skills as dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.id
HAVING pr.id = 1)
WHERE projects.id = 1;

UPDATE projects
SET cost = (
SELECT SUM(salary) sumSalary
FROM developers AS dev
INNER JOIN developers_skills as dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.id
HAVING pr.id = 2)
WHERE projects.id = 2;

UPDATE projects
SET cost = (
SELECT SUM(salary) sumSalary
FROM developers AS dev
INNER JOIN developers_skills as dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.id
HAVING pr.id = 3)
WHERE projects.id = 3;

UPDATE projects
SET cost = (
SELECT SUM(salary) sumSalary
FROM developers AS dev
INNER JOIN developers_skills as dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.id
HAVING pr.id = 4)
WHERE projects.id = 4;

UPDATE projects
SET cost = (
SELECT SUM(salary) sumSalary
FROM developers AS dev
INNER JOIN developers_skills as dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.id
HAVING pr.id = 5)
WHERE projects.id = 5;

UPDATE projects
SET cost = (
SELECT SUM(salary) sumSalary
FROM developers AS dev
INNER JOIN developers_skills as dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.id
HAVING pr.id = 6)
WHERE projects.id = 6;

UPDATE projects
SET cost = (
SELECT SUM(salary) sumSalary
FROM developers AS dev
INNER JOIN developers_skills as dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.id
HAVING pr.id = 7)
WHERE projects.id = 7;

UPDATE projects
SET cost = (
SELECT SUM(salary) sumSalary
FROM developers AS dev
INNER JOIN developers_skills as dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.id
HAVING pr.id = 8)
WHERE projects.id = 8;

UPDATE projects
SET cost = (
SELECT SUM(salary) sumSalary
FROM developers AS dev
INNER JOIN developers_skills as dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.id
HAVING pr.id = 9)
WHERE projects.id = 9;

UPDATE projects
SET cost = (
SELECT SUM(salary) sumSalary
FROM developers AS dev
INNER JOIN developers_skills as dev_sk
ON dev.id = dev_sk.developer_id
INNER JOIN developers_projects AS dev_pr
ON dev_sk.id = dev_pr.developers_skills_id
INNER JOIN projects AS pr
ON dev_pr.project_id = pr.id
GROUP BY pr.id
HAVING pr.id = 10)
WHERE projects.id = 10;
