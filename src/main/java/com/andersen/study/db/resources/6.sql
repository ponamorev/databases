CREATE TABLE avg_salary (
  id_company INT,
  name_company VARCHAR(100),
  id_project INT,
  cost INT,
  avg_sal INT
);

INSERT INTO avg_salary (id_company, id_project, cost)
    SELECT companies_projects.id_company, companies_projects.id_project, projects.cost
    FROM companies_projects
    LEFT JOIN projects
      ON companies_projects.id_project = projects.id;

UPDATE avg_salary
SET avg_sal = (SELECT AVG(salary) FROM developers WHERE id IN (
  SELECT id_developer FROM developers_projects
  WHERE id_project = avg_salary.id_project
)),
  name_company = (SELECT name FROM companies WHERE id = avg_salary.id_company);

SELECT name_company, cost, avg_sal AS 'average_salary'
FROM avg_salary
WHERE cost IN (
  SELECT MIN(cost)
  FROM avg_salary
  GROUP BY name_company
);