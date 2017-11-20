SELECT SUM(salary) AS 'salary_java'
FROM developers
WHERE salary IN (
  SELECT salary
  FROM developers
  WHERE id IN (
    SELECT id_developer
    FROM developers_skills
    WHERE id_skill IN (
      SELECT id
      FROM skills
      WHERE specialty LIKE 'Java'
    )
  )
);