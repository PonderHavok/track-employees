DROP DATABASE IF EXISTS emptracker_db;
CREATE DATABASE emptracker_db;
USE emptracker_db;


CREATE TABLE department (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30)
);

CREATE TABLE role (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  department_id INT,
  salary DECIMAL,
  FOREIGN KEY(department_id) REFERENCES department(id)
);

CREATE TABLE employee (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  FOREIGN KEY(role_id) REFERENCES role(id),
  FOREIGN KEY(manager_id) REFERENCES employee(id)
);