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
