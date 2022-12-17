use emp_tracker;

INSERT INTO department
(name)
VALUES
('Sales'),
('Service'),
('IT'),
('HR'),
('Finance');

INSERT INTO role
(title, salary, department_id)
VALUES
('Sales Manager', 95000, 1),
('Sales Associate', 65000, 1),
('Service Manager', 100000, 2),
('IT Manager', 90000, 3),
('IT Assistant', 65000, 3),
('HR Manager', 180000, 4),
('HR Assistant', 35000, 4),
('Finance Manager', 300000, 5),
('Finance Assistant', 150000, 5);

INSERT INTO employee
(first_name, last_name, role_id, manager_id)
VALUES
('Michael', 'Jordan', 1, 151),
('Ryan', 'Ryan', 2, NULL),
('Chad', 'Reed', 3, 123),
('Sherlock', 'Holmes', 4, NULL),
('James', 'Madison', 5, 134),
('Charles', 'Manson', 6, NULL),
('Jack', 'Ripper', 7, NULL),
('Scott', 'Calvin', 8, 1225),
('James', 'Manson', 9, 360),
('Biggy', 'Smalls', 10, NULL);

