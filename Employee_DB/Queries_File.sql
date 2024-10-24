-- Retrive first 5 employees by highest salary
select * 
from employee_db.employees e
order by e.salary desc
limit 5;

-- Retrieve the 5 employees with the lowest salary, skipping the first 15 records
select *
from employee_db.employees e
order by e.salary desc
limit 5 offset 15;

-- Display each department total salary, but only show departments where the toal salary exceeds 15,000
select d.department_name, sum(salary) Dept_Salary
from employees e
join departments d on e.department_id = d.department_id
group by d.department_id
having Dept_Salary > 15000;

-- For each employee, display there salary on the note if its above or below 7000
select first_name, case when salary >= 7000 then 'above 7000' else 'below 7000' end as Salary_Scale
from employees;

-- List the Projects that started last 1 months
select * from projects
where date_sub(curdate(), interval 1 month) <= start_date;

-- Display all Projects, including with those no employees
select e.first_name, p.project_name
from employees e
join employeeprojects ep on e.employee_id = ep.employee_id
right join projects p on p.project_id = ep.project_id;
