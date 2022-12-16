DROP DATABASE IF EXISTS emp_tracker;
CREATE DATABASE emp_tracker;

USE emp_tracker;

CREATE TABLE department (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL UNSIGNED NOT NULL,
  department INT UNSIGNED NOT NULL,
  INDEX dep_ind (department_id),
  CONSTRAINT fake_department FOREIGN KEY
  (department_id) REFERENCES department (id) ON DELETE CASCADE
);

CREATE TABLE employee (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT UNSIGNED NOT NULL,
  INDEX role_ind (role_id),
  CONSTRAINT fake_role FOREIGN KEY (role_id)
  REFERENCES role (id) ON DELETE CASCADE,
  manager_id INT UNSIGNED,
  INDEX fake_man (manager_id),
  CONSTRAINT fake_manager FOREIGN KEY (manager_id)
  REFERENCES employee(id) ON DELETE SET NULL
);