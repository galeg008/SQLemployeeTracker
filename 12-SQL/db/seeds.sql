
USE employee;

INSERT INTO department
    (name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Sales Lead', 100000, 1),
    ('Salesperson', 80000, 1),
    ('Lead Engineer', 150000, 2),
    ('Software Engineer', 120000, 2),
    ('Account Manager', 160000, 3),
    ('Accountant', 125000, 3),
    ('Legal Team Lead', 250000, 4),
    ('Lawyer', 190000, 4);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id, department_id)
VALUES
    ('John', 'Doe', 1, NULL,2),
    ('Mike', 'Chan', 2, 1,3),
    ('Ashley', 'Rodriguez', 3, NULL,1),
    ('Kevin', 'Tupik', 4, 3,3),
    ('Kunal', 'Singh', 5, NULL,2),
    ('Malia', 'Brown', 6, 5,2),
    ('Sarah', 'Lourd', 7, NULL,3),
    ('Tom', 'Allen', 8, 7,2);
