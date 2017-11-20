SELECT projects.name, developers.salary
FROM projects, developers
WHERE projects.name IN (
  SELECT name
  FROM projects
  WHERE id IN (
    SELECT id_project
    FROM developers_projects
    WHERE id_developer IN (
      SELECT id
      FROM developers
      WHERE salary IN (
        SELECT MAX(salary)
        FROM developers
      )
    )
  )
)
AND
  developers.salary IN (
    SELECT MAX(salary)
    FROM developers
  );