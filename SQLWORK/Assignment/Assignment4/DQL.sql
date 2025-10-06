Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 9.3.0 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use firstbit;
Database changed
mysql> show tables;
+--------------------+
| Tables_in_firstbit |
+--------------------+
| account            |
| books              |
| country            |
| department         |
| employee           |
| employees          |
| issue              |
| job_histry         |
| jobs               |
| member             |
| member101          |
| project_details    |
| stu                |
| student            |
+--------------------+
14 rows in set (0.096 sec)

mysql> desc employees;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| first_name    | varchar(30)  | YES  |     | NULL    |       |
| last_name     | varchar(30)  | YES  |     | NULL    |       |
| email         | varchar(30)  | YES  |     | NULL    |       |
| phone_number  | int          | YES  |     | NULL    |       |
| hire_date     | date         | YES  |     | NULL    |       |
| job_id        | int          | YES  |     | NULL    |       |
| salary        | int          | YES  |     | NULL    |       |
| commision     | int          | YES  |     | NULL    |       |
| department_id | decimal(4,0) | YES  | MUL | NULL    |       |
| manager_id    | decimal(6,0) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
11 rows in set (0.130 sec)

1. Write a query to display the names (first_name, last_name) using alias
name “First Name", "Last Name.

mysql> select first_name as "First name",last_name as "Last name" from employees;
+------------+-----------+
| First name | Last name |
+------------+-----------+
| nikita     | badakh    |
| nikita     | badakh    |
| NULL       | NULL      |
| steven     | king      |
| neena      | kochhar   |
| lex        | dehaan    |
| alexander  | hunold    |
| bruce      | ernst     |
| david      | austin    |
| valli      | pataballa |
| diana      | lorentz   |
| nancy      | greenberg |
| daniel     | faviet    |
+------------+-----------+
13 rows in set (0.068 sec)

2. Write a query to get unique department ID from employee table.
mysql> select department_id from employees;
+---------------+
| department_id |
+---------------+
|          NULL |
|          NULL |
|          NULL |
|            10 |
|            10 |
|            10 |
|            30 |
|            60 |
|            60 |
|            60 |
|            60 |
|            80 |
|            80 |
+---------------+
13 rows in set (0.009 sec)

mysql> select distinct department_id from employees;
+---------------+
| department_id |
+---------------+
|          NULL |
|            10 |
|            30 |
|            60 |
|            80 |
+---------------+
5 rows in set (0.038 sec)

3. Write a query to get all employee details from the employee table order
by first name, descending.

mysql> select first_name as "First name" from employees order by first_name
desc;
+------------+
| First name |
+------------+
| valli      |
| steven     |
| nikita     |
| nikita     |
| neena      |
| nancy      |
| lex        |
| diana      |
| david      |
| daniel     |
| bruce      |
| alexander  |
| NULL       |
+------------+
13 rows in set (0.034 sec)

mysql> select  *from employees order by first_name desc;
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email         | phone_number | hire_date  | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
|         106 | valli      | pataballa | not available |       355646 | 1987-06-23 |      7 |  52800 |         0 |            60 |        103 |
|         100 | steven     | king      | not available |        12345 | 1987-06-17 |      1 | 264000 |         0 |            10 |        200 |
|           1 | nikita     | badakh    | not available |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           2 | nikita     | badakh    | not available |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|         101 | neena      | kochhar   | not available |       515123 | 1987-06-18 |      2 | 187000 |         0 |            10 |        200 |
|         108 | nancy      | greenberg | not available |        12344 | 1987-06-25 |      9 | 132000 |         0 |            80 |        145 |
|         102 | lex        | dehaan    | not available |       131444 | 1987-06-19 |      3 | 187000 |         0 |            10 |        200 |
|         107 | diana      | lorentz   | not available |        13456 | 1987-06-24 |      8 |  46200 |         0 |            30 |        114 |
|         105 | david      | austin    | not available |        24567 | 1987-06-22 |      6 |  52800 |         0 |            60 |        103 |
|         109 | daniel     | faviet    | not available |        13455 | 1987-06-26 |     10 |  99000 |         0 |            80 |        145 |
|         104 | bruce      | ernst     | not available |       245466 | 1987-06-21 |      5 |  66000 |         0 |            60 |        103 |
|         103 | alexander  | hunold    | not available |      1425356 | 1987-06-20 |      4 |  99000 |         0 |            60 |        103 |
|           3 | NULL       | NULL      | not available |         NULL | 2010-02-12 |   NULL |   NULL |      NULL |          NULL |       NULL |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
13 rows in set (0.034 sec)

4. Write a query to get the names (first_name, last_name), salary, PF of all
the employees (PF is calculated as 15% of salary).

mysql>  select first_name,last_name,salary,salary*0.15 as pf from employees;
+------------+-----------+--------+----------+
| first_name | last_name | salary | pf       |
+------------+-----------+--------+----------+
| nikita     | badakh    |   NULL |     NULL |
| nikita     | badakh    |   NULL |     NULL |
| NULL       | NULL      |   NULL |     NULL |
| steven     | king      | 264000 | 39600.00 |
| neena      | kochhar   | 187000 | 28050.00 |
| lex        | dehaan    | 187000 | 28050.00 |
| alexander  | hunold    |  99000 | 14850.00 |
| bruce      | ernst     |  66000 |  9900.00 |
| david      | austin    |  52800 |  7920.00 |
| valli      | pataballa |  52800 |  7920.00 |
| diana      | lorentz   |  46200 |  6930.00 |
| nancy      | greenberg | 132000 | 19800.00 |
| daniel     | faviet    |  99000 | 14850.00 |
+------------+-----------+--------+----------+
13 rows in set (0.039 sec)

5. Write a query to get the employee ID, names (first_name, last_name),
salary in ascending order of salary.

mysql> select employee_id,first_name,last_name,salary from employees order b
y salary;
+-------------+------------+-----------+--------+
| employee_id | first_name | last_name | salary |
+-------------+------------+-----------+--------+
|           1 | nikita     | badakh    |   NULL |
|           2 | nikita     | badakh    |   NULL |
|           3 | NULL       | NULL      |   NULL |
|         107 | diana      | lorentz   |  46200 |
|         105 | david      | austin    |  52800 |
|         106 | valli      | pataballa |  52800 |
|         104 | bruce      | ernst     |  66000 |
|         103 | alexander  | hunold    |  99000 |
|         109 | daniel     | faviet    |  99000 |
|         108 | nancy      | greenberg | 132000 |
|         101 | neena      | kochhar   | 187000 |
|         102 | lex        | dehaan    | 187000 |
|         100 | steven     | king      | 264000 |
+-------------+------------+-----------+--------+
13 rows in set (0.012 sec)

6. Write a query to get the total salaries payable to employees.
mysql> select sum(salary) from employees;
+-------------+
| sum(salary) |
+-------------+
|     1185800 |
+-------------+
1 row in set (0.074 sec)

7. Write a query to get the maximum and minimum salary from employees
table.
mysql> select max(salary),min(salary) from employees;
+-------------+-------------+
| max(salary) | min(salary) |
+-------------+-------------+
|      264000 |       46200 |
+-------------+-------------+
1 row in set (0.032 sec)

8. Write a query to get the average salary and number of employees in the
employees table.
mysql> select avg(salary),count(*) from employees;
+-------------+----------+
| avg(salary) | count(*) |
+-------------+----------+
| 118580.0000 |       13 |
+-------------+----------+
1 row in set (0.012 sec)

9. Write a query to get the number of employees working with the
company.
mysql> select count(*) from employees;
+----------+
| count(*) |
+----------+
|       13 |
+----------+
1 row in set (0.012 sec)

10.Write a query to get the number of jobs available in the employees table.

mysql> select count(distinct job_id) from employees;
+------------------------+
| count(distinct job_id) |
+------------------------+
|                     10 |
+------------------------+
1 row in set (0.083 sec)

11.Write a query to select first 10 records from a table.
mysql> select *from employees limit 10;
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email         | phone_number | hire_date  | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
|           1 | nikita     | badakh    | not available |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           2 | nikita     | badakh    | not available |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           3 | NULL       | NULL      | not available |         NULL | 2010-02-12 |   NULL |   NULL |      NULL |          NULL |       NULL |
|         100 | steven     | king      | not available |        12345 | 1987-06-17 |      1 | 264000 |         0 |            10 |        200 |
|         101 | neena      | kochhar   | not available |       515123 | 1987-06-18 |      2 | 187000 |         0 |            10 |        200 |
|         102 | lex        | dehaan    | not available |       131444 | 1987-06-19 |      3 | 187000 |         0 |            10 |        200 |
|         103 | alexander  | hunold    | not available |      1425356 | 1987-06-20 |      4 |  99000 |         0 |            60 |        103 |
|         104 | bruce      | ernst     | not available |       245466 | 1987-06-21 |      5 |  66000 |         0 |            60 |        103 |
|         105 | david      | austin    | not available |        24567 | 1987-06-22 |      6 |  52800 |         0 |            60 |        103 |
|         106 | valli      | pataballa | not available |       355646 | 1987-06-23 |      7 |  52800 |         0 |            60 |        103 |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
10 rows in set (0.009 sec)

12.Write a query to display the name (first_name, last_name) and salary for
all employees whose salary is not in the range $10,000 through $15,000.

mysql> select first_name,last_name salary from employees where salary not be
tween 10000 and 15000;
+------------+-----------+
| first_name | salary    |
+------------+-----------+
| steven     | king      |
| neena      | kochhar   |
| lex        | dehaan    |
| alexander  | hunold    |
| bruce      | ernst     |
| david      | austin    |
| valli      | pataballa |
| diana      | lorentz   |
| nancy      | greenberg |
| daniel     | faviet    |
+------------+-----------+
10 rows in set (0.029 sec)


mysql> select first_name,last_name ,salary from employees where salary not b
etween 10000 and 15000;
+------------+-----------+--------+
| first_name | last_name | salary |
+------------+-----------+--------+
| steven     | king      | 264000 |
| neena      | kochhar   | 187000 |
| lex        | dehaan    | 187000 |
| alexander  | hunold    |  99000 |
| bruce      | ernst     |  66000 |
| david      | austin    |  52800 |
| valli      | pataballa |  52800 |
| diana      | lorentz   |  46200 |
| nancy      | greenberg | 132000 |
| daniel     | faviet    |  99000 |
+------------+-----------+--------+
10 rows in set (0.009 sec)

13.Write a query to display the name (first_name, last_name) and
department ID of all employees in departments 30 or 100 in ascending
order.

mysql> select first_name,last_name,department_id from employees where depart
ment_id in(30,100) order by department_id;
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| diana      | lorentz   |            30 |
+------------+-----------+---------------+
1 row in set (0.011 sec)

14.Write a query to display the name (first_name, last_name) and salary for
all employees whose salary is not in the range $10,000 through $15,000
and are in department 30 or 100.

mysql> select first_name,last_name ,salary,department_id from employees wher
e salary not between 10000 and 15000 and department_id in(30,100);
+------------+-----------+--------+---------------+
| first_name | last_name | salary | department_id |
+------------+-----------+--------+---------------+
| diana      | lorentz   |  46200 |            30 |
+------------+-----------+--------+---------------+
1 row in set (0.028 sec)


mysql> select first_name,last_name,hire_date from employees where year(hire_
date);
+------------+-----------+------------+
| first_name | last_name | hire_date  |
+------------+-----------+------------+
| NULL       | NULL      | 2010-02-12 |
| steven     | king      | 1987-06-17 |
| neena      | kochhar   | 1987-06-18 |
| lex        | dehaan    | 1987-06-19 |
| alexander  | hunold    | 1987-06-20 |
| bruce      | ernst     | 1987-06-21 |
| david      | austin    | 1987-06-22 |
| valli      | pataballa | 1987-06-23 |
| diana      | lorentz   | 1987-06-24 |
| nancy      | greenberg | 1987-06-25 |
| daniel     | faviet    | 1987-06-26 |
+------------+-----------+------------+
11 rows in set (0.011 sec)

15.Write a query to display the name (first_name, last_name) and hire date
for all employees who were hired in 1987.

mysql> select first_name,last_name,hire_date from employees where year(hire_date)=1987;
+------------+-----------+------------+
| first_name | last_name | hire_date  |
+------------+-----------+------------+
| steven     | king      | 1987-06-17 |
| neena      | kochhar   | 1987-06-18 |
| lex        | dehaan    | 1987-06-19 |
| alexander  | hunold    | 1987-06-20 |
| bruce      | ernst     | 1987-06-21 |
| david      | austin    | 1987-06-22 |
| valli      | pataballa | 1987-06-23 |
| diana      | lorentz   | 1987-06-24 |
| nancy      | greenberg | 1987-06-25 |
| daniel     | faviet    | 1987-06-26 |
+------------+-----------+------------+
10 rows in set (0.009 sec)

16.Write a query to display the first_name of all employees who have both
"b" and "c" in their first name.

mysql> select first_name from employees where first_name like '%b%' and firs
t_name like '%c%';
+------------+
| first_name |
+------------+
| bruce      |
+------------+
1 row in set (0.012 sec)

mysql> select *from department;
+---------------+-----------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME | MANAGER_ID | LOCATION_ID |
+---------------+-----------------+------------+-------------+
|            10 | adminstration   |        200 |        1700 |
|            20 | marketing       |        201 |        1800 |
|            30 | purchasing      |        114 |        1700 |
|            40 | human resources |        203 |        2400 |
|            50 | shipping        |        121 |        1500 |
|            60 | it              |        103 |        1400 |
|            70 | public relation |        204 |        2700 |
|            80 | sales           |        145 |        2500 |
+---------------+-----------------+------------+-------------+
8 rows in set (0.057 sec)

17.Write a query to display the last name, job, and salary for all employees
whose job is that of a Programmer or a Shipping Clerk, and whose salary
is not equal to $4,500, $10,000, or $15,000.

mysql> select last_name,job_id,salary from employees where department_id in(select department_id from department where department_name in("programmer","
shipping")) and salary not in(4500,10000,15000);
Empty set (0.023 sec)

mysql> select last_name from employees where last_name like "_____%";
+-----------+
| last_name |
+-----------+
| badakh    |
| badakh    |
| kochhar   |
| dehaan    |
| hunold    |
| ernst     |
| austin    |
| pataballa |
| lorentz   |
| greenberg |
| faviet    |
+-----------+
11 rows in set (0.013 sec)

18.Write a query to display the last name of employees whose names have
exactly 6 characters.
mysql> select last_name from employees where last_name like "______";
+-----------+
| last_name |
+-----------+
| badakh    |
| badakh    |
| dehaan    |
| hunold    |
| austin    |
| faviet    |
+-----------+
6 rows in set (0.015 sec)

mysql> select last_name from employees where last_name like "__%";
+-----------+
| last_name |
+-----------+
| badakh    |
| badakh    |
| king      |
| kochhar   |
| dehaan    |
| hunold    |
| ernst     |
| austin    |
| pataballa |
| lorentz   |
| greenberg |
| faviet    |
+-----------+
12 rows in set (0.009 sec)

19.Write a query to display the last name of employees having 'e' as the third
character.
mysql> select last_name from employees where last_name like "__e%";
+-----------+
| last_name |
+-----------+
| greenberg |
+-----------+
1 row in set (0.011 sec)

mysql> select last_name from employees where last_name like "__d%";
+-----------+
| last_name |
+-----------+
| badakh    |
| badakh    |
+-----------+
2 rows in set (0.011 sec)

mysql> select last_name from employees where last_name like "__e%";
+-----------+
| last_name |
+-----------+
| greenberg |
+-----------+
1 row in set (0.010 sec)

20.Write a query to display the jobs/designations available in the employees
table.
mysql> select distinct job_id from employees;
+--------+
| job_id |
+--------+
|   NULL |
|      1 |
|      2 |
|      3 |
|      4 |
|      5 |
|      6 |
|      7 |
|      8 |
|      9 |
|     10 |
+--------+
11 rows in set (0.032 sec)

21.Write a query to select all record from employees where last name in
'BLAKE', 'SCOTT', 'KING' and 'FORD'.
mysql> select *from employees where last_name in ("blake","scott","king","fo
rd");
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email         | phone_number | hire_date  | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
|         100 | steven     | king      | not available |        12345 | 1987-06-17 |      1 | 264000 |         0 |            10 |        200 |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
1 row in set (0.014 sec)

mysql>







