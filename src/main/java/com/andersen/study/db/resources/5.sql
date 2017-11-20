CREATE TABLE minbenefit (
  id_company INT,
  name_company VARCHAR(100),
  id_customer INT,
  name_customer VARCHAR(100),
  cost_all_projects INT
);

INSERT INTO minbenefit (id_company, id_customer)
    SELECT * FROM companies_customers;

UPDATE minbenefit
SET name_company = (
  SELECT name FROM companies
  WHERE id = minbenefit.id_company
), name_customer = (
  SELECT name FROM customers
  WHERE id = minbenefit.id_customer
);

UPDATE minbenefit, customers_projects, companies_projects
    SET minbenefit.cost_all_projects = (
      SELECT SUM(cost) FROM projects WHERE id IN (
        SELECT id_project FROM customers_projects
        WHERE id_customer = minbenefit.id_customer
      ) AND id IN (
        SELECT id_project FROM companies_projects
        WHERE id_company = minbenefit.id_company
      )
    )
WHERE minbenefit.id_company = companies_projects.id_company
AND minbenefit.id_customer = customers_projects.id_customer;

SELECT name_company, name_customer, cost_all_projects AS 'min_profit'
FROM minbenefit
WHERE cost_all_projects IN (
  SELECT MIN(cost_all_projects)
  FROM minbenefit
  GROUP BY name_company
);

DROP TABLE minbenefit;