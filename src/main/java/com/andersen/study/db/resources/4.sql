ALTER TABLE projects ADD cost INT NOT NULL;

ALTER TABLE developers_projects ADD cost_project INT NOT NULL;

UPDATE developers_projects, developers, projects
    SET cost_project = developers.salary * PERIOD_DIFF(EXTRACT(YEAR_MONTH FROM projects.deadline),
                                                       EXTRACT(YEAR_MONTH FROM projects.start))
WHERE developers.id = developers_projects.id_developer
AND projects.id = developers_projects.id_project;

CREATE TEMPORARY TABLE dev (
  id_pr INT NOT NULL,
  cost INT NOT NULL
);

INSERT INTO dev SELECT * FROM (
  SELECT id_project, SUM(cost_project)
  FROM developers_projects
  GROUP BY id_project
) AS res;

UPDATE projects, dev
    SET projects.cost = dev.cost
WHERE projects.id = dev.id_pr;

ALTER TABLE developers_projects DROP cost_project;
DROP TABLE dev;
