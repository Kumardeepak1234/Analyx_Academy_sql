-- 1. Write a query to display the names (first_name, last_name) using alias name “First Name", "Last Name"

select first_name as First_Name, last_name as Last_Name from employees;

select first_name as "First Name", last_name as "Last Name" from employees;

--sir ka new question
select * from employees where department_id is null;

-- 2. Write a query to get unique department ID from employee table

select distinct(department_id) as unique_d_id from employees;

-- 3. Write a query to get all employee details from the employee table order by first name, descending

select * from employees
order by first_name desc;

-- 4. Write a query to get the names (first_name, last_name), salary, 
-- PF of all the employees (PF is calculated as 15% of salary)

select first_name,last_name,salary,(salary*15/100) as pf
from employees;


select concat(first_name,' ',last_name) as full_name,salary,(salary*0) as pf
from employees;

-- 5. Write a query to get the employee ID, names (first_name, last_name),
-- salary in ascending order of salary

select employee_id,concat(first_name,' ',last_name) as full_name,salary
from employees
order by salary asc;

-- 6. Write a query to get the total salaries payable to employees

select sum(salary) as total_sal from employees;

-- 7. Write a query to get the maximum and minimum salary from employees table

select max(salary) mx_sal, min(salary) mn_sal from employees;

select max(salary) mx_sal from employees;

select min(salary) mn_sal from employees;

-- 8. Write a query to get the average salary and number of employees in the employees table

select avg(salary) avg_sal, count(employee_id) cnt_emp from employees;

-- 9. Write a query to get the number of employees working with the company

select count(*) from employees;

-- 10. Write a query to get the number of jobs available in the employees table

select count(distinct job_id) tot_job from employees;

-- 11. Write a query get all first name from employees table in upper case

select upper (first_name) as upper_first_name from employees;

-- 12. Write a query to get the first 3 characters of first name from employees table

select substring(first_name,1,3) as first_3_characters from employees;

select first_name,left(first_name,3) as first_3_char from employees;

-- 13. Write a query to get first name from employees table 
-- after removing white spaces from both side (in case space is available)

select trim(first_name) as first_name from employees;

-- 14. Write a query to get the length of the employee first_name from employees table

select len(first_name) as lenght_first_name from employees;

-- 15. Write a query to display the name (first_name, last_name) and salary for 
-- all employees whose salary is not in the range $10,000 through $15,000

select first_name,last_name,salary from  employees
where salary not between 10000 and 15000;

-- 16. Write a query to display the name (first_name, last_name) and department ID of all 
-- employees in departments 30 or 100 in ascending order of department_ID

select concat(first_name,' ' ,last_name) as full_name,department_id from employees
where department_id between 30 AND 100 ;

-- 17. Write a query to display the name (first_name, last_name) and salary for all employees
-- whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.

select first_name,last_name,salary,department_id from employees
where salary not between 10000 and 15000
and department_id in(30,100);

-- 18. Write a query to display the name (first_name, last_name) and hire date for all
-- employees who were hired in 1987

select first_name,last_name,hire_date from employees
where hire_date like '2002%'; -- 1987 date not present in data show i am changing the year 

-- 19. Write a query to display the first_name of all employees who have both "b" and "c" in
-- their first name

select first_name from employees
where first_name like '%b%' and 
first_name like '%c%';


-- 20. Write a query to display the last name, job, and salary for all employees whose job is
-- that of a Programmer or a Shipping Clerk, and whose salary is not equal to 4,500, 10,000, or 15,000

select last_name,job_id,salary from employees
where job_id in ('IT_PROG','FI_MGR') -- programmer or shipping clerk not present in data so i am 
and salary not in(4500,10000,15000);            -- chaning job-id name

select job_id from employees;

-- 21. Write a query to display the last name of employees whose names have exactly 5 characters

select last_name from employees
where LEN(LAST_name) =5;

-- 22. Write a query to display the last name of employees having 'e' as the third character

select last_name from employees
where last_name LIKE '__e%';


-- 23. Write a query to update the portion of the phone_number in the employees table,
-- within the phone number the substring '124' will be replaced by '999'

UPDATE employees
SET phone_number = REPLACE(phone_number, '124', '999');

select phone_number from employees;

-- 24. Write a query to get the details of the employees where the length of the first name
-- greater than or equal to 8

select *,first_name from employees
where LEN(first_name) >=8;