-- 1) Retrive first 5 employees by highest salary
select * 
from employee_db.employees e
order by e.salary desc
limit 5;

-- 2) Retrieve the 5 employees with the lowest salary, skipping the first 15 records
select *
from employee_db.employees e
order by e.salary desc
limit 5 offset 15;

-- 3) Display each department total salary, but only show departments where the toal salary exceeds 15,000
select d.department_name, sum(salary) Dept_Salary
from employees e
join departments d on e.department_id = d.department_id
group by d.department_id
having Dept_Salary > 15000;

-- 4) For each employee, display there salary on the note if its above or below 7000
select first_name, case when salary >= 7000 then 'above 7000' else 'below 7000' end as Salary_Scale
from employees;

-- 5) List the Projects that started last 1 months
select * from projects
where date_sub(curdate(), interval 1 month) <= start_date;

-- 6) Display all Projects, including with those no employees
select e.first_name, p.project_name
from employees e
join employeeprojects ep on e.employee_id = ep.employee_id
right join projects p on p.project_id = ep.project_id;

-- 7) Increase the salary of employee by 12% in the Finance Department
update employees e
join departments d on d.department_id = e.department_id
set salary = salary * 1.12
where d.department_name = 'Finance';

-- 8) Retrieve the first and last names of employees whose last name starts with 's'
select first_name, last_name
from employees 
where last_name like 's%';

-- 9) count the number of employees assigned to each department
select department_name, count(employee_id) employees_count
from employees e
join departments d on d.department_id = e.department_id
group by d.department_id;

-- 10) find the total number of hours worked by employees on each project
select project_name, sum(hours_worked) totalHours
from projects p
join employeeprojects ep on ep.project_id = p.project_id
group by p.project_id;

-- 11) select the employees who earn more than the average salary
select * 
from employees e
where salary > (select avg(salary) avg 
    from employees);
     
-- 12) Display each project start date in the format (January 01, 2024)
select project_name, date_format(start_date, '%M %e, %Y') as start_date
from projects;

-- 13) List all employees, their department names and the projects they have worked on
select first_name, last_name, department_name, project_name
from employees e 
join departments d on d.department_id = e.department_id
join employeeprojects ep on e.employee_id = ep.employee_id
join projects p on p.project_id = ep.project_id;

-- 14) List all projects, as 'Assigned' if any employees are assigned and 'Unassigned' otherwise
select distinct project_name, case when ep.employee_id then 'Assigned' else 'Unassigned' end as status
from employeeprojects ep
right join projects p on p.project_id = ep.project_id;

-- 15) find the average salary of employees in each department, but only show the deparments where more than 2 employees work
select department_name, avg(salary) avg_salary
from departments d
join employees e on e.department_id = d.department_id
group by d.department_id
having count(employee_id) > 2;

-- 16) Concatenate employees first name and last names into a single full name, separated by a space
select concat(first_name, ' ', last_name) as fullName
from employees;

-- 17) set all employees salaries above 8000 and belonging to 'IT' department to 8500
update employees e
join departments d on d.department_id = e.department_id
set salary = '8500'
where d.department_name = 'IT' and salary > 8000;

-- 18) find the employee with the highest salary who works in the 'HR' department -- using nested query
select Max(salary) sal
from Employees 
where department_Id = (SELECT department_id FROM departments where department_name = 'HR');

-- 19) find employees who had been assigned to the projects that will end within the next 2 months
select e.*
from employees e
join employeeprojects ep on e.employee_id = ep.employee_id
join projects p on ep.project_id = p.project_id
where coalesce(end_date,'9999-01-01') <= date_add(curdate(), interval 2 month);

-- 20) for each project, show the total salary billed based on the hourse worked by employees, but only for the projects where total billing exceeds 10000

