-- Departments

insert into departments(department_id, department_name) values(1,'Admin');
insert into departments(department_id, department_name) values(2, 'Human Resources');
insert into departments(department_id, department_name) values(3, 'Finance');
insert into departments(department_id, department_name) values(4, 'Engineering');
insert into departments(department_id, department_name) values(5, 'Sales');
insert into departments(department_id, department_name) values(6, 'Marketing');
insert into departments(department_id, department_name) values(7, 'Customer Support');
insert into departments(department_id, department_name) values(8, 'IT Services');
insert into departments(department_id, department_name) values(9, 'Product Development');
insert into departments(department_id, department_name) values(10, 'Quality Assurance');
insert into departments(department_id, department_name) values(11, 'Solutins Unit', 104);

-- employees

insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (101, 'Amith', 'G', 1, '2022-01-15', 60000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (102, 'Adnan', 'Anzar', 2, '2021-05-20', 75000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (103, 'Venkar', 'Rambabu', 6, '2021-11-15', 48000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (104, 'Venkatest', 'C', 7, '2022-08-05', 72000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (105, 'Ranganath', 'BR', 3, '2020-03-10', 90000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (106, 'Naveen', 'Gaddam', 4, '2019-07-25', 55000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (107, 'Raj', 'Priyan', 5, '2023-04-01', 58000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (108, 'Balaji', 'R', 8, '2020-03-10', 90000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (109, 'Govardhan', 'Naik', 9, '2019-07-25', 55000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (110, 'Tejaswini', 'R', 10, '2023-04-01', 58000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (111, 'Arun', 'Priyan', 5, '2023-04-01', 58000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (112, 'Mahes', 'R', 8, '2020-03-10', 90000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (113, 'Shivu', 'Naik', 9, '2019-07-25', 55000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (114, 'Kishan', 'R', 10, '2023-04-01', 58000.00);
insert into employees (employee_id, first_name, last_name, department_id, hire_date, salary) values (115, 'Rohan', 'R', 10, '2023-04-01', 58000.00);

update departments set manager_id = 102
where department_id in (1,2,3,4,5);

update departments set manager_id = 103
where department_id in (6,7,8,9,10);

-- project
insert into projects (project_id, project_name, start_date, end_date) values (201, 'HR Management System', '2023-01-01', '2023-06-30');
insert into projects (project_id, project_name, start_date, end_date) values (202, 'Finance Automation', '2022-02-15', '2023-03-31');
insert into projects (project_id, project_name, start_date, end_date) values (203, 'E-Commerce Platform', '2021-08-01', '2022-12-31');
insert into projects (project_id, project_name, start_date, end_date) values (204, 'Sales Analytics Tool', '2022-01-01', '2022-11-30');
insert into projects (project_id, project_name, start_date, end_date) values (205, 'Marketing Campaign Tracker', '2023-05-01', '2023-12-15');
insert into projects (project_id, project_name, start_date, end_date) values (206, 'Customer Support Portal', '2021-06-01', '2022-03-15');
insert into projects (project_id, project_name, start_date, end_date) values (207, 'IT Asset Management', '2023-02-01', '2023-08-31');
insert into projects (project_id, project_name, start_date, end_date) values (208, 'Product Development Dashboard', '2022-09-01', '2023-04-30');
insert into projects (project_id, project_name, start_date, end_date) values (209, 'Quality Control System', '2023-03-01', '2023-10-31');
insert into projects (project_id, project_name, start_date, end_date) values (210, 'R&D Innovation Hub', '2021-10-01', '2023-05-01');
 
 
-- Employee_Projects

insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (101, 201, 150.25, '2023-01-10');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (102, 202, 200.50, '2022-03-01');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (103, 203, 180.75, '2021-08-15');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (104, 204, 160.00, '2022-01-10');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (105, 205, 120.50, '2023-05-05');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (106, 206, 110.25, '2021-06-15');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (107, 207, 175.00, '2023-02-10');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (108, 208, 190.50, '2022-09-10');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (109, 209, 130.75, '2023-03-05');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (110, 210, 220.00, '2021-10-15');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (107, 201, 175.00, '2023-02-10');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (108, 202, 190.50, '2022-09-10');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (109, 203, 130.75, '2023-03-05');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (110, 205, 220.00, '2021-10-15');
insert into employees_projects (employee_id, project_id, hours_logged, allocation_date) values (109, 210, 20.00, '2021-10-15');

-- transactions
 
insert into transactions (transaction_id, employee_id, amount, transaction_date, transaction_type) values (301, 101, 1500.50, '2023-01-05', 'Salary');
insert into transactions (transaction_id, employee_id, amount, transaction_date, transaction_type) values (302, 102, 2000.00, '2023-01-05', 'Salary');
insert into transactions (transaction_id, employee_id, amount, transaction_date, transaction_type) values (303, 103, 500.75, '2023-01-10', 'Bonus');
insert into transactions (transaction_id, employee_id, amount, transaction_date, transaction_type) values (304, 104, 450.00, '2023-02-01', 'Deduction');
insert into transactions (transaction_id, employee_id, amount, transaction_date, transaction_type) values (305, 105, 2000.00, '2023-02-05', 'Salary');
insert into transactions (transaction_id, employee_id, amount, transaction_date, transaction_type) values (306, 106, 750.25, '2023-03-15', 'Bonus');
insert into transactions (transaction_id, employee_id, amount, transaction_date, transaction_type) values (307, 107, 1800.00, '2023-03-05', 'Salary');
insert into transactions (transaction_id, employee_id, amount, transaction_date, transaction_type) values (308, 108, 600.50, '2023-04-20', 'Deduction');
insert into transactions (transaction_id, employee_id, amount, transaction_date, transaction_type) values (309, 109, 400.00, '2023-05-01', 'Bonus');
insert into transactions (transaction_id, employee_id, amount, transaction_date, transaction_type) values (310, 110, 2200.00, '2023-05-05', 'Salary');