CREATE TABLE developers (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE skills (
  id INT NOT NULL AUTO_INCREMENT,
  specialty VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE projects (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  description VARCHAR(150),
  start DATE NOT NULL,
  deadline DATE NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE companies (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  address VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE customers (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE developers_skills (
  id_developer INT NOT NULL,
  id_skill INT NOT NULL,

  FOREIGN KEY (id_developer)
  REFERENCES developers (id),
  FOREIGN KEY (id_skill)
  REFERENCES skills (id),

  UNIQUE (id_developer, id_skill)
);

CREATE TABLE developers_projects (
  id_developer INT NOT NULL,
  id_project INT NOT NULL,

  FOREIGN KEY (id_developer)
  REFERENCES developers (id),
  FOREIGN KEY (id_project)
  REFERENCES projects (id),

  UNIQUE (id_developer, id_project)
);

CREATE TABLE projects_skills (
  id_project INT NOT NULL,
  id_skill INT NOT NULL,

  FOREIGN KEY (id_project)
  REFERENCES projects (id),
  FOREIGN KEY (id_skill)
  REFERENCES skills (id),

  UNIQUE (id_project, id_skill)
);

CREATE TABLE developers_companies (
  id_developer INT NOT NULL,
  id_company INT NOT NULL,

  FOREIGN KEY (id_developer)
  REFERENCES developers (id),
  FOREIGN KEY (id_company)
  REFERENCES companies (id),

  UNIQUE (id_developer, id_company)
);

CREATE TABLE companies_projects (
  id_company INT NOT NULL,
  id_project INT NOT NULL,

  FOREIGN KEY (id_company)
  REFERENCES companies (id),
  FOREIGN KEY (id_project)
  REFERENCES projects (id),

  UNIQUE (id_company, id_project)
);

CREATE TABLE companies_customers (
  id_company INT NOT NULL,
  id_customer INT NOT NULL,

  FOREIGN KEY (id_company)
  REFERENCES companies (id),
  FOREIGN KEY (id_customer)
  REFERENCES customers (id),

  UNIQUE (id_company, id_customer)
);

CREATE TABLE customers_projects (
  id_customer INT NOT NULL,
  id_project INT NOT NULL,

  FOREIGN KEY (id_customer)
  REFERENCES customers (id),
  FOREIGN KEY (id_project)
  REFERENCES projects (id),

  UNIQUE (id_customer, id_project)
);