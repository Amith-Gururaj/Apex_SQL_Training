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
