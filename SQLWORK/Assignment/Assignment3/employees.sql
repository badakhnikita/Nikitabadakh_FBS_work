Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
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
14 rows in set (0.706 sec)

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
11 rows in set (0.092 sec)


1. Write a SQL statement to insert a record as follows:
Employees :
+-------------+-------------+-------------+----------+--------------------+--
----------+------------+----------+----------------+------------+------------
---+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL | PHONE_NUMBER |
HIRE_DATE | JOB_ID | SALARY | COMMISSION_PCT | MANAGER_ID |
DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+--
----------+------------+----------+----------------+------------+------------
---+
| 100 | Steven | King | SKING | 515.123.4567 |
1987-06-17 | AD_PRES | 24000.00 | 0.00 | 200 |

10 |

| 101 | Neena | Kochhar | NKOCHHAR | 515.123.4568 |
1987-06-18 | AD_VP | 17000.00 | 0.00 | 200 |
10 |
| 102 | Lex | De Haan | LDEHAAN | 515.123.4569 |
1987-06-19 | AD_VP | 17000.00 | 0.00 | 200 |
10 |
| 103 | Alexander | Hunold | AHUNOLD | 590.423.4567 |
1987-06-20 | IT_PROG | 9000.00 | 0.00 | 103 |
60 |
| 104 | Bruce | Ernst | BERNST | 590.423.4568 |
1987-06-21 | IT_PROG | 6000.00 | 0.00 | 103 |
60 |
| 105 | David | Austin | DAUSTIN | 590.423.4569 |
1987-06-22 | IT_PROG | 4800.00 | 0.00 | 103 |
60 |
| 106 | Valli | Pataballa | VPATABAL | 590.423.4560 |
1987-06-23 | IT_PROG | 4800.00 | 0.00 | 103 |
60 |
| 107 | Diana | Lorentz | DLORENTZ | 590.423.5567 |
1987-06-24 | IT_PROG | 4200.00 | 0.00 | 114 |
30 |
| 108 | Nancy | Greenberg | NGREENBE | 515.124.4569 |
1987-06-25 | SA_MAN | 12000.00 | 0.00 | 145 |
80 |
| 109 | Daniel | Faviet | DFAVIET | 515.124.4169 |
1987-06-26 | SA_MAN | 9000.00 | 0.00 | 145 |
80 |

mysql> insert into employees values(100,"steven","king","sking@gmail.com",12
34567890,"1987-06-17",1,24000,0,10,200),(101,"neena","kochhar","nkochhar@gma
il.com",5151234567,"1987-06-18",2,17000,0,10,200);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`firstbit`.`employees`, CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`department_id`, `manager_id`) REFERENCES `department` (`DEPARTMENT_ID`, `MANAGER_ID`) ON DELETE SET NULL)
mysql> desc department;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | NO   | PRI | 0       |       |
| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.024 sec)

mysql> insert into department values(10,"adminstration",200,1700),(20,"marke
ting",201,1800),(30,"purchasing",114,1700),(40,"human resources",203,2400),(
50,"shipping",121,1500),(60,"it",103,1400),(70,"public relation",204,2700),(
80,"sales",145,2500);
Query OK, 8 rows affected (0.186 sec)
Records: 8  Duplicates: 0  Warnings: 0

2. Write a SQL statement to insert 3 rows by a single insert statement.

mysql> insert into employees values(100,"steven","king","sking@gmail.com",1234567890,"1987-06-17",1,24000,0,10,200),(101,"neena","kochhar","nkochhar@gmail.com",5151234567,"1987-06-18",2,17000,0,10,200);
ERROR 1264 (22003): Out of range value for column 'phone_number' at row 2
mysql> insert into employees values(100,"steven","king","sking@gmail.com",12345,"1987-06-17",1,24000,0,10,200),(101,"neena","kochhar","nkochhar@gmail.co
m",515123,"1987-06-18",2,17000,0,10,200);
Query OK, 2 rows affected (0.038 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into employees values(102,"lex","dehaan","ldehaan@gmail.com",1
31444,"1987-06-19",3,17000,0,10,200),(103,"alexander","hunold","ahunold@gmai
l.com",1425356,"1987-06-20",4,9000,0,60,103)(104,"bruce","ernst","bernst@gma
il.com",245466,"1987-06-21",5,6000,0,60,103),(105,"david","austin","davidaus
tin@gmail.com",24567,"1987-06-22",6,,4800,0,60,103),(106,"valli","pataballa"
,"vpatainsert into employees values(102,"lex","dehaan","ldehaan@gmail.com",1
m",1425356,"1987-06-20",4,9000,0,60,103)(104,"bruce","ernst","bernst@gmail.c
l.com",24567,"1987-06-22",6,,4800,0,60,103),(106,"valli","pataballa","vpatab
ntz@gmail.com",13456,"1987-06-24",8,4200,0,30,114),(108,"nancy","greenberg",
,"dfaviet@gmail.com",13455,"1987-06-26",10,9000,0,80,145);
mysql> insert into employees values(102,"lex","dehaan","ldehaan@gmail.com",131444,"1987-06-19",3,17000,0,10,200),(103,"alexander","hunold","ahunold@gmail.com",1425356,"1987-06-20",4,9000,0,60,103),(104,"bruce","ernst","bernst@gmail.com",245466,"1987-06-21",5,6000,0,60,103),(105,"david","austin","davidaustin@gmail.com",24567,"1987-06-22",6,,4800,0,60,103),(106,"valli","pataballa","vpatabal@gmail.com",355646,"1987-06-23",7,4800,0,60,103),(107,"diana","lorentz","dlorentz@gmail.com",13456,"1987-06-24",8,4200,0,30,114),(108,"nancy","greenberg","ngreenbe@gmail.com",12344,"1987-06-25",9,12000,0,80,145),(109,"daniel","faviet","dfaviet@gmail.com",13455,"1987-06-26",10,9000,0,80,145);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',4800,0,60,103),(106,"valli","pataballa","vpatabal@gmail.com",355646,"1987-06-23' at line 1
mysql> insert into employees values(102,"lex","dehaan","ldehaan@gmail.com",131444,"1987-06-19",3,17000,0,10,200),(103,"alexander","hunold","ahunold@gmail.com",1425356,"1987-06-20",4,9000,0,60,103),(104,"bruce","ernst","bernst@gmail.com",245466,"1987-06-21",5,6000,0,60,103),(105,"david","austin","davidaustin@gmail.com",24567,"1987-06-22",6,4800,0,60,103),(106,"valli","pataballa","vpatabal@gmail.com",355646,"1987-06-23",7,4800,0,60,103),(107,"diana","lorentz","dlorentz@gmail.com",13456,"1987-06-24",8,4200,0,30,114),(108,"nancy","greenberg","ngreenbe@gmail.com",12344,"1987-06-25",9,12000,0,80,145),(109,"daniel","faviet","dfaviet@gmail.com",13455,"1987-06-26",10,9000,0,80,145);
Query OK, 8 rows affected (0.065 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> table employees;
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email                 | phone_number | hire_date  | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
|           1 | nikita     | badakh    | NULL                  |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           2 | nikita     | badakh    | NULL                  |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           3 | NULL       | NULL      | NULL                  |         NULL | 2010-02-12 |   NULL |   NULL |      NULL |          NULL |       NULL |
|         100 | steven     | king      | sking@gmail.com       |        12345 | 1987-06-17 |      1 |  24000 |         0 |            10 |        200 |
|         101 | neena      | kochhar   | nkochhar@gmail.com    |       515123 | 1987-06-18 |      2 |  17000 |         0 |            10 |        200 |
|         102 | lex        | dehaan    | ldehaan@gmail.com     |       131444 | 1987-06-19 |      3 |  17000 |         0 |            10 |        200 |
|         103 | alexander  | hunold    | ahunold@gmail.com     |      1425356 | 1987-06-20 |      4 |   9000 |         0 |            60 |        103 |
|         104 | bruce      | ernst     | bernst@gmail.com      |       245466 | 1987-06-21 |      5 |   6000 |         0 |            60 |        103 |
|         105 | david      | austin    | davidaustin@gmail.com |        24567 | 1987-06-22 |      6 |   4800 |         0 |            60 |        103 |
|         106 | valli      | pataballa | vpatabal@gmail.com    |       355646 | 1987-06-23 |      7 |   4800 |         0 |            60 |        103 |
|         107 | diana      | lorentz   | dlorentz@gmail.com    |        13456 | 1987-06-24 |      8 |   4200 |         0 |            30 |        114 |
|         108 | nancy      | greenberg | ngreenbe@gmail.com    |        12344 | 1987-06-25 |      9 |  12000 |         0 |            80 |        145 |
|         109 | daniel     | faviet    | dfaviet@gmail.com     |        13455 | 1987-06-26 |     10 |   9000 |         0 |            80 |        145 |
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
13 rows in set (0.013 sec)

mysql> desc jobs;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| job_id     | int         | NO   | PRI | NULL    |       |
| job_title  | varchar(20) | YES  |     |         |       |
| min_salary | int         | YES  |     | 8000    |       |
| max_salary | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.068 sec)

3. Write a SQL statement to insert one row in jobs table to ensure that no duplicate
value will be entered in the job_id column.

mysql> insert into jobs values(1,"president",20000,40000),(2,"adminstration
vice president",15000,30000),(3,"administration assistant",3000,6000),(4,"fi
nance manager",8200,16000),(4,"accountant,4200,9000),(5,"accounting manager"
,8200,16000);
    "> ^C
mysql> insert into jobs values(1,"president",20000,40000),(2,"adminstration vice president",15000,30000),(3,"administration assistant",3000,6000),(4,"finance manager",8200,16000),(4,"accountant",4200,9000),(5,"accounting manager
",8200,16000);
ERROR 3819 (HY000): Check constraint 'jobs_chk_1' is violated.
mysql> create show table jobs;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show table jobs' at line 1
mysql> create show jobs;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show jobs' at line 1
mysql> show create table jobs;
+-------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table



          |
+-------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| jobs  | CREATE TABLE `jobs` (
  `job_id` int NOT NULL,
  `job_title` varchar(20) DEFAULT '',
  `min_salary` int DEFAULT '8000',
  `max_salary` int DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  CONSTRAINT `jobs_chk_1` CHECK ((`max_salary` <= 25000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.035 sec)

mysql> insert into jobs values(1,"president",13000,20000),(2,"adminstration vice president",15000,25000),(3,"administration assistant",3000,6000),(4,"finance manager",8200,16000),(4,"accountant",4200,9000),(5,"accounting manager",8200,16000);
ERROR 1062 (23000): Duplicate entry '1' for key 'jobs.PRIMARY'
mysql> delete from jobs;
Query OK, 4 rows affected (0.044 sec)

mysql> insert into jobs values(1,"president",13000,20000),(2,"adminstration vice president",15000,25000),(3,"administration assistant",3000,6000),(4,"finance manager",8200,16000),(4,"accountant",4200,9000),(5,"accounting manager",8200,16000);
ERROR 1406 (22001): Data too long for column 'job_title' at row 2
mysql> delete from jobs;
Query OK, 0 rows affected (0.006 sec)

mysql> insert into jobs values(1,"president",13000,20000),(2,"adminpresident
",15000,25000),(3,"adminassistant",3000,6000),(4,"financemanager",8200,16000),(4,"accountant",4200,9000),(5,"accountingmanager",8200,16000);            ERROR 1062 (23000): Duplicate entry '4' for key 'jobs.PRIMARY'
mysql> delete from jobs;
Query OK, 0 rows affected (0.006 sec)

mysql> insert into jobs values(1,"president",13000,20000),(2,"adminpresident",15000,25000),(3,"adminassistant",3000,6000),(4,"financemanager",8200,16000
),(5,"accountant",4200,9000),(6,"accountingmanager",8200,16000);
Query OK, 6 rows affected (0.042 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> insert into jobs values(1,"president",13000,20000),(2,"adminpresident",15000,25000),(3,"adminassistant",3000,6000),(4,"financemanager",8200,16000),(5,"accountant",4200,9000),(6,"accountingmanager",8200,16000);
ERROR 1062 (23000): Duplicate entry '1' for key 'jobs.PRIMARY'

4. Write SQL statement to increment salary of each emp by 10%.
mysql> update employees set salary=salary+(salary*10);
Query OK, 10 rows affected (0.044 sec)
Rows matched: 13  Changed: 10  Warnings: 0

mysql> select *from employees;
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email                 | phone_number | hire_date  | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
|           1 | nikita     | badakh    | NULL                  |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           2 | nikita     | badakh    | NULL                  |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           3 | NULL       | NULL      | NULL                  |         NULL | 2010-02-12 |   NULL |   NULL |      NULL |          NULL |       NULL |
|         100 | steven     | king      | sking@gmail.com       |        12345 | 1987-06-17 |      1 | 264000 |         0 |            10 |        200 |
|         101 | neena      | kochhar   | nkochhar@gmail.com    |       515123 | 1987-06-18 |      2 | 187000 |         0 |            10 |        200 |
|         102 | lex        | dehaan    | ldehaan@gmail.com     |       131444 | 1987-06-19 |      3 | 187000 |         0 |            10 |        200 |
|         103 | alexander  | hunold    | ahunold@gmail.com     |      1425356 | 1987-06-20 |      4 |  99000 |         0 |            60 |        103 |
|         104 | bruce      | ernst     | bernst@gmail.com      |       245466 | 1987-06-21 |      5 |  66000 |         0 |            60 |        103 |
|         105 | david      | austin    | davidaustin@gmail.com |        24567 | 1987-06-22 |      6 |  52800 |         0 |            60 |        103 |
|         106 | valli      | pataballa | vpatabal@gmail.com    |       355646 | 1987-06-23 |      7 |  52800 |         0 |            60 |        103 |
|         107 | diana      | lorentz   | dlorentz@gmail.com    |        13456 | 1987-06-24 |      8 |  46200 |         0 |            30 |        114 |
|         108 | nancy      | greenberg | ngreenbe@gmail.com    |        12344 | 1987-06-25 |      9 | 132000 |         0 |            80 |        145 |
|         109 | daniel     | faviet    | dfaviet@gmail.com     |        13455 | 1987-06-26 |     10 |  99000 |         0 |            80 |        145 |
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
13 rows in set (0.008 sec)


5. Write a SQL statement to change the email column of employees table with 'not
available' for those employees whose department_id is 80 and gets a
commission is less than .20%

mysql> update employees set email="not available" where department_id=80 and
 commision=commision-(commision*20);
Query OK, 2 rows affected (0.045 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select *from employees;
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email                 | phone_number | hire_date  | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
|           1 | nikita     | badakh    | NULL                  |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           2 | nikita     | badakh    | NULL                  |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           3 | NULL       | NULL      | NULL                  |         NULL | 2010-02-12 |   NULL |   NULL |      NULL |          NULL |       NULL |
|         100 | steven     | king      | sking@gmail.com       |        12345 | 1987-06-17 |      1 | 264000 |         0 |            10 |        200 |
|         101 | neena      | kochhar   | nkochhar@gmail.com    |       515123 | 1987-06-18 |      2 | 187000 |         0 |            10 |        200 |
|         102 | lex        | dehaan    | ldehaan@gmail.com     |       131444 | 1987-06-19 |      3 | 187000 |         0 |            10 |        200 |
|         103 | alexander  | hunold    | ahunold@gmail.com     |      1425356 | 1987-06-20 |      4 |  99000 |         0 |            60 |        103 |
|         104 | bruce      | ernst     | bernst@gmail.com      |       245466 | 1987-06-21 |      5 |  66000 |         0 |            60 |        103 |
|         105 | david      | austin    | davidaustin@gmail.com |        24567 | 1987-06-22 |      6 |  52800 |         0 |            60 |        103 |
|         106 | valli      | pataballa | vpatabal@gmail.com    |       355646 | 1987-06-23 |      7 |  52800 |         0 |            60 |        103 |
|         107 | diana      | lorentz   | dlorentz@gmail.com    |        13456 | 1987-06-24 |      8 |  46200 |         0 |            30 |        114 |
|         108 | nancy      | greenberg | not available         |        12344 | 1987-06-25 |      9 | 132000 |         0 |            80 |        145 |
|         109 | daniel     | faviet    | not available         |        13455 | 1987-06-26 |     10 |  99000 |         0 |            80 |        145 |
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
13 rows in set (0.009 sec)

6. Write a SQL statement to change the email column of employees table with 'not
available' for those employees who belongs to the 'Purchasing' department.

mysql> update employees set email="not available" where department_id=30;
Query OK, 1 row affected (0.033 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from employees;
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email                 | phone_number | hire_date  | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
|           1 | nikita     | badakh    | NULL                  |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           2 | nikita     | badakh    | NULL                  |         NULL | NULL       |   NULL |   NULL |      NULL |          NULL |       NULL |
|           3 | NULL       | NULL      | NULL                  |         NULL | 2010-02-12 |   NULL |   NULL |      NULL |          NULL |       NULL |
|         100 | steven     | king      | sking@gmail.com       |        12345 | 1987-06-17 |      1 | 264000 |         0 |            10 |        200 |
|         101 | neena      | kochhar   | nkochhar@gmail.com    |       515123 | 1987-06-18 |      2 | 187000 |         0 |            10 |        200 |
|         102 | lex        | dehaan    | ldehaan@gmail.com     |       131444 | 1987-06-19 |      3 | 187000 |         0 |            10 |        200 |
|         103 | alexander  | hunold    | ahunold@gmail.com     |      1425356 | 1987-06-20 |      4 |  99000 |         0 |            60 |        103 |
|         104 | bruce      | ernst     | bernst@gmail.com      |       245466 | 1987-06-21 |      5 |  66000 |         0 |            60 |        103 |
|         105 | david      | austin    | davidaustin@gmail.com |        24567 | 1987-06-22 |      6 |  52800 |         0 |            60 |        103 |
|         106 | valli      | pataballa | vpatabal@gmail.com    |       355646 | 1987-06-23 |      7 |  52800 |         0 |            60 |        103 |
|         107 | diana      | lorentz   | not available         |        13456 | 1987-06-24 |      8 |  46200 |         0 |            30 |        114 |
|         108 | nancy      | greenberg | not available         |        12344 | 1987-06-25 |      9 | 132000 |         0 |            80 |        145 |
|         109 | daniel     | faviet    | not available         |        13455 | 1987-06-26 |     10 |  99000 |         0 |            80 |        145 |
+-------------+------------+-----------+-----------------------+--------------+------------+--------+--------+-----------+---------------+------------+
13 rows in set (0.008 sec)

7. Write a SQL statement to change the email and commission_pct column of
employees table with 'not available' and 0.10 for all employees.

mysql> update employees set email="not available" ,commision=commision+(comm
ision*10);
Query OK, 10 rows affected (0.046 sec)
Rows matched: 13  Changed: 10  Warnings: 0

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
13 rows in set (0.007 sec)

mysql> update employees set email="not available" where department_id=80 and commision<0.20;
Query OK, 0 rows affected (0.010 sec)
Rows matched: 2  Changed: 0  Warnings: 0

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
13 rows in set (0.009 sec)

mysql>
















