Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
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
14 rows in set (0.341 sec)

mysql> select *from employees;
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
|         107 | diana      | lorentz   | not available |        13456 | 1987-06-24 |      8 |  46200 |         0 |            30 |        114 |
|         108 | nancy      | greenberg | not available |        12344 | 1987-06-25 |      9 | 132000 |         0 |            80 |        145 |
|         109 | daniel     | faviet    | not available |        13455 | 1987-06-26 |     10 |  99000 |         0 |            80 |        145 |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
13 rows in set (0.029 sec)

1. Write an SQL query to retrieve all employees' names and salaries from a table named
`Employees`, ordered by salary in descending order.

mysql> select first_name as "First name", last_name as "Last name",salary fr
om employees order by salary desc;
+------------+-----------+--------+
| First name | Last name | salary |
+------------+-----------+--------+
| steven     | king      | 264000 |
| neena      | kochhar   | 187000 |
| lex        | dehaan    | 187000 |
| nancy      | greenberg | 132000 |
| alexander  | hunold    |  99000 |
| daniel     | faviet    |  99000 |
| bruce      | ernst     |  66000 |
| david      | austin    |  52800 |
| valli      | pataballa |  52800 |
| diana      | lorentz   |  46200 |
| nikita     | badakh    |   NULL |
| nikita     | badakh    |   NULL |
| NULL       | NULL      |   NULL |
+------------+-----------+--------+
13 rows in set (0.012 sec)

2. Retrieve the top 5 highest-paid employees from the `Employees` table.
mysql> select *from employees order by salary desc limit 5;
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email         | phone_number | hire_date  | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
|         100 | steven     | king      | not available |        12345 | 1987-06-17 |      1 | 264000 |         0 |            10 |        200 |
|         101 | neena      | kochhar   | not available |       515123 | 1987-06-18 |      2 | 187000 |         0 |            10 |        200 |
|         102 | lex        | dehaan    | not available |       131444 | 1987-06-19 |      3 | 187000 |         0 |            10 |        200 |
|         108 | nancy      | greenberg | not available |        12344 | 1987-06-25 |      9 | 132000 |         0 |            80 |        145 |
|         103 | alexander  | hunold    | not available |      1425356 | 1987-06-20 |      4 |  99000 |         0 |            60 |        103 |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
5 rows in set (0.010 sec)

3. Fetch employee records from the `Employees` table, skipping the first 3 records and showing
the next 5 records.
mysql> select *from employees limit 3,5;
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email         | phone_number | hire_date  | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
|         100 | steven     | king      | not available |        12345 | 1987-06-17 |      1 | 264000 |         0 |            10 |        200 |
|         101 | neena      | kochhar   | not available |       515123 | 1987-06-18 |      2 | 187000 |         0 |            10 |        200 |
|         102 | lex        | dehaan    | not available |       131444 | 1987-06-19 |      3 | 187000 |         0 |            10 |        200 |
|         103 | alexander  | hunold    | not available |      1425356 | 1987-06-20 |      4 |  99000 |         0 |            60 |        103 |
|         104 | bruce      | ernst     | not available |       245466 | 1987-06-21 |      5 |  66000 |         0 |            60 |        103 |
+-------------+------------+-----------+---------------+--------------+------------+--------+--------+-----------+---------------+------------+
5 rows in set (0.007 sec)

4. Write a query to count the number of employees in each department from the `Employees`
table.
mysql> select department_id,count(*) from employees group by department_id;
+---------------+----------+
| department_id | count(*) |
+---------------+----------+
|          NULL |        3 |
|            10 |        3 |
|            30 |        1 |
|            60 |        4 |
|            80 |        2 |
+---------------+----------+
5 rows in set (0.010 sec)

5. Fetch the department-wise average salary from the `Employees` table, only for departments
where the average salary is greater than 50,000.
mysql> select department_id, avg(salary) from employees group by department_
id having avg(salary)>=50000;
+---------------+-------------+
| department_id | avg(salary) |
+---------------+-------------+
|            10 | 212666.6667 |
|            60 |  67650.0000 |
|            80 | 115500.0000 |
+---------------+-------------+
3 rows in set (0.012 sec)

mysql> select *from project_details;
Empty set (0.676 sec)

mysql> create table product(pid int primary key,product_name varchar(20));
Query OK, 0 rows affected (0.856 sec)

mysql> insert into product values(1,"laptop"),(2,"charger"),(3,"powerbank");

Query OK, 3 rows affected (0.087 sec)
Records: 3  Duplicates: 0  Warnings: 0

6. Retrieve a list of products from the `Products` table where the product name contains the word
"Laptop" .
mysql> select *from product where product_name="laptop";
+-----+--------------+
| pid | product_name |
+-----+--------------+
|   1 | laptop       |
+-----+--------------+
1 row in set (0.012 sec)

mysql> select *from student;
+------+--------+-------+------+
| roll | name   | marks | city |
+------+--------+-------+------+
|    1 | nikita |    50 | pune |
|    3 | vijeta |    45 | pune |
+------+--------+-------+------+
2 rows in set (0.096 sec)

mysql> select *from stu;
Empty set (0.083 sec)

mysql> select name from student where name like "---";
Empty set (0.028 sec)

7. Extract the first three characters from the `student_name` column in the `Students` table.
mysql> select substring(name,1,3) from student;
+---------------------+
| substring(name,1,3) |
+---------------------+
| nik                 |
| vij                 |
+---------------------+
2 rows in set (0.034 sec)

8. Fetch only those students from the `Students` table whose names start with the letter "A".
mysql> select name from student where name like "A%";
Empty set (0.009 sec)

9. Write an SQL query to find the total number of orders placed in each month, considering only
those months where more than 100 orders were placed.

mysql> create table orders(order_id int primary key,customer_id int,order_da
te date, total_amount int);
Query OK, 0 rows affected (0.242 sec)

mysql> insert into orders values(1,101,"25-10-10",2500),(2,102,"25-11-1",300
0);
Query OK, 2 rows affected (0.067 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select monthname(order_date),count(*) from orders group by monthname(
order_date) having count(*)>=100;
Empty set (0.024 sec)

mysql> select monthname(order_date),count(*) from orders group by monthname(order_date) having count(*)<=100;
+-----------------------+----------+
| monthname(order_date) | count(*) |
+-----------------------+----------+
| October               |        1 |
| November              |        1 |
+-----------------------+----------+
2 rows in set (0.013 sec)

mysql> select monthname(order_date),count(*) from orders group by monthname(order_date) having count(*)>=100;
Empty set (0.012 sec)


mysql> create table sales(sale_id int primary key,book_id int,sales_date dat
e,quantity int);
Query OK, 0 rows affected (0.202 sec)

mysql> select *from books;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     101 | let us c            | denis ritche |  450 | system   |
|     102 | oracle-complete ref | loni         |  550 | database |
|     103 | mastering sql       | loni         |  300 | database |
|     104 | pl-sql-ref          | scott urman  |  750 | database |
+---------+---------------------+--------------+------+----------+
4 rows in set (0.039 sec)

mysql> desc books;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| book_no   | int         | NO   | PRI | NULL    |       |
| book_name | varchar(30) | NO   |     | NULL    |       |
| author    | varchar(30) | YES  |     | NULL    |       |
| cost      | int         | YES  |     | NULL    |       |
| category  | char(10)    | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.127 sec)

mysql> insert into sales values(1,101,"12-12-1",100000),(2,102,"13--11-23",7
888);
Query OK, 2 rows affected, 1 warning (0.091 sec)
Records: 2  Duplicates: 0  Warnings: 1

mysql> alter table sales
    -> add foreign key(book_id) references books(book_no);
Query OK, 2 rows affected (0.923 sec)
Records: 2  Duplicates: 0  Warnings: 0

10. Get the total and average sales amount per category from the `Sales` table, considering only
categories with total sales greater than 1,00,000.
mysql> select category,avg(cost),sum(cost) from books b inner join sales s on b.book_no=s.book_id
    -> where quantity>100000
    -> group by category;
Empty set (0.031 sec)

mysql> select category,avg(cost),sum(cost) from books b inner join sales s on b.book_no=s.book_id
    -> where quantity>=100000
    -> group by category;
+----------+-----------+-----------+
| category | avg(cost) | sum(cost) |
+----------+-----------+-----------+
| system   |  450.0000 |       450 |
+----------+-----------+-----------+
1 row in set (0.026 sec)

11. What does the following query return?
SELECT COUNT(*) FROM Employees;
a) The total number of employees
b) The sum of salaries of employees
c) The first record of the table
d) An error message
option a)

12. What will be the output of the following query?
SELECT LENGTH('Database');
a) 9
b) 8
c) 10
d) Error
 option b)8

13. Which of the following clauses is used to filter grouped results?
a) WHERE
b) ORDER BY
c) HAVING
d) GROUP BY
 option c)

14. What does `LEFT JOIN` do?
a) Returns only the matching rows from both tables
b) Returns all rows from the left table and matching rows from the right table
c) Returns all rows from the right table and matching rows from the left table
d) Returns all rows from both tables
option b)
15. What will be the result of the following query?
SELECT UPPER('hello world');
a) hello world
b) HELLO WORLD
c) Hello World
d) Syntax error

option c)

16. Question:
You have two tables:
• Orders with columns: order_id, customer_id, order_date, total_amount.
• Customers with columns: customer_id, region.
• O/P- region | total_orders
Write an SQL query to find the total order amount (total_amount) for each region. Only include
regions where the total order amount is greater than 10000

mysql> create table customer(customer_id int primary key,region varchar(20))
;
Query OK, 0 rows affected (0.235 sec)

mysql> insert into customer values(101,"pune"),(102,"nashik");
Query OK, 2 rows affected (0.067 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> alter table orders
    -> add foreign key(customer_id) references customer(customer_id);
Query OK, 2 rows affected (0.397 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select *from orders;
+----------+-------------+------------+--------------+
| order_id | customer_id | order_date | total_amount |
+----------+-------------+------------+--------------+
|        1 |         101 | 2025-10-10 |         2500 |
|        2 |         102 | 2025-11-01 |         3000 |
+----------+-------------+------------+--------------+
2 rows in set (0.011 sec)


mysql> update orders set total_amount=11000 where order_id=1;
Query OK, 1 row affected (0.047 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update orders set total_amount=12000 where order_id=2;
Query OK, 1 row affected (0.039 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from orders;
+----------+-------------+------------+--------------+
| order_id | customer_id | order_date | total_amount |
+----------+-------------+------------+--------------+
|        1 |         101 | 2025-10-10 |        11000 |
|        2 |         102 | 2025-11-01 |        12000 |
+----------+-------------+------------+--------------+
2 rows in set (0.010 sec)

mysql> select region,sum(total_amount) from orders o inner join customer c
    -> on o.customer_id=c.customer_id
    -> group by region
    -> having sum(total_amount)>=10000;
+--------+-------------------+
| region | sum(total_amount) |
+--------+-------------------+
| pune   |             11000 |
| nashik |             12000 |
+--------+-------------------+
2 rows in set (0.027 sec)

17. Question:
You have two tables:
• Books with columns: book_id, author_id, title, price.
• Sales with columns: sale_id, book_id, sale_date, quantity.
• O/P- author_id | total_books_sold

Write an SQL query to find the total number of books sold by each author. Only include authors
who have sold more than 100 books.
mysql> select *from books;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     101 | let us c            | denis ritche |  450 | system   |
|     102 | oracle-complete ref | loni         |  550 | database |
|     103 | mastering sql       | loni         |  300 | database |
|     104 | pl-sql-ref          | scott urman  |  750 | database |
+---------+---------------------+--------------+------+----------+
4 rows in set (0.009 sec)

mysql> select *from sales;
+---------+---------+------------+----------+
| sale_id | book_id | sales_date | quantity |
+---------+---------+------------+----------+
|       1 |     101 | 2012-12-01 |   100000 |
|       2 |     102 | 2013-11-23 |     7888 |
+---------+---------+------------+----------+
2 rows in set (0.008 sec)

mysql> select author,count(*) from books b inner join sales s
    -> on b.book_no=s.book_id
    -> group by author
    -> having count(*)>=100;
Empty set (0.011 sec)

mysql> select author,sum(quantity) from books b inner join sales s
    -> on b.book_no=s.book_id
    -> group by author
    -> having sum(quantity)>=100;
+--------------+---------------+
| author       | sum(quantity) |
+--------------+---------------+
| denis ritche |        100000 |
| loni         |          7888 |
+--------------+---------------+
2 rows in set (0.015 sec)

mysql>