create schema organization;

create table departments
(department_id int primary key,
department_name varchar(50) not null,
manager_id int
);

alter table departments add foreign key(manager_id) references employees(employee_id);

create table employees 
(employee_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
department_id int, 
salary decimal(10,2),
hire_date date not null,
foreign key(department_id) references departments(department_id));

-- alter table employees add foreign key(department_id) references departments(department_id);

create table projects
(project_id int primary key,
project_name varchar(50),
start_date date,
end_date date);

create table employees_projects
(project_id int,
employee_id int,
hours_logged decimal(10,2),
allocation_date date,
foreign key(project_id) references projects(project_id),
foreign key(employee_id) references employees(employee_id)
);

create table transaction
(transaction_id int primary key,
employee_id int,
amount decimal(10,2),
transaction_date date,
transaction_type varchar(50),
foreign key(employee_id) references employees(employee_id)
);

ALTER TABLE `organization`.`transaction` 
RENAME TO `organization`.`transactions`;



