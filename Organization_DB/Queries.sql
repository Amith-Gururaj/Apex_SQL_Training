-- 1. Write a query to fetch the names of employees and their department name.

select concat(first_name, " ", last_name) as emp_name, d.department_name
from employees e
join departments d on e.department_id = d.department_id;

-- 2. Find the total hours logged by each employee across all projects.

select sum(hours_logged) total_hours_logged
from employees_projects;

select e.employee_id, first_name, last_name, sum(hours_logged) total_hours_logged
from employees e 
join employees_projects ep on e.employee_id = ep.employee_id
group by e.employee_id;

-- 3. Retrieve the department name and count of employees in each department.

select department_name, count(e.employee_id) as employees_count
from departments d
join employees e on e.department_id = d.department_id
group by d.department_id;

-- 4. Identify employees who work on more than 2 projects.

select employee_id, count(project_id) as projects_count
from employees_projects ep
group by employee_id
having projects_count > 1;

-- 5. Write a query to find employees who do not work on any project.

select concat(first_name, " ", last_name) as employee_name
from employees e
where employee_id not in (select employee_id from employees_projects);

-- 6. find employees earning a salary greater than the average salary of their department.

select e.first_name
from employees e
join (select department_id, avg(salary) as avg_sal from employees group by department_id) as sub on sub.department_id = e.department_id
where salary > avg_sal;

-- 7. Write a query using a self join to display employee names along with their manager's name.

select concat(e.first_name, ' ', e.last_name) as name, concat(m.first_name, ' ', m.last_name) as manager_name
from employees e
left join departments d on e.department_id = d.department_id
left join employees m on d.manager_id = m.employee_id;

-- 8. Identify projects where the total hours logged by all employees exceed 300.

select project_id, sum(hours_logged) as loggedHours
from employees_projects
group by project_id
having loggedHours > 300;

-- 9. Retrieve the name of the department where the manager has the highest salary.

select first_name, last_name, max(salary)
from employees e
join departments d on d.manager_id = e.employee_id
group by employee_id
limit 1;

-- 10. Display employees who have logged more than 40 hours on any project using a CASE statement to classify them as 'Overtime' or 'Normal.'

select concat(first_name, " ", last_name), project_name ,case when ep.hours_logged > 40 then 'Overtime' else 'Normal' end
from employees e
join employees_projects ep on ep.employee_id = e.employee_id
join projects p on ep.project_id = p.project_id;

-- 11. Find employees who were hired after January 1, 2020, and have not been allocated to any projects.

select concat(first_name, " ", last_name) as employee_name, hire_date
from employees e
where e.hire_date > '2020-01-01';

-- 12. Write a query to display employees whose total salary transactions (including bonuses/deductions) exceed 10,000.

select concat(first_name, " ", last_name) as employee_name, sum(amount) as total_salary
from employees e
join transactions t on e.employee_id = t.employee_id
group by e.employee_id
having total_salary > 2000;

-- 14. 
