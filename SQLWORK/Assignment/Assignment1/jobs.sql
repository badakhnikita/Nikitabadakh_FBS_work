1. Login to MySQL and view all databases already present. You should get
following result :
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| firstbit           |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| world              |
+--------------------+
6 rows in set (0.068 sec)


2. Write an SQL statement to create a simple table countries including columns
country_id,country_name and region_id. After this display the structure of
table as below :


mysql> use firstbit;
Database changed
mysql> create table country
    -> (country_id int,country_name varchar(20),region_id int);
Query OK, 0 rows affected (0.262 sec)

mysql> desc country;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(20) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.027 sec)



3. Write an SQL statement to create a table named jobs including columns
job_id, job_title, min_salary, max_salary and check whether the
max_salary amount exceeding the upper limit 25000. Also set job_id as
primary key and entering null values for job_title is not allowed.

mysql> create table jobs
    -> (job_id int,job_title varchar(20),min_salary int,max_salary int);
Query OK, 0 rows affected (0.162 sec)

mysql> desc jobs;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| job_id     | int         | YES  |     | NULL    |       |
| job_title  | varchar(20) | YES  |     | NULL    |       |
| min_salary | int         | YES  |     | NULL    |       |
| max_salary | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.028 sec)

mysql> alter  table jobs
    -> add primary key(job_id);
Query OK, 0 rows affected (0.382 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc jobs;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| job_id     | int         | NO   | PRI | NULL    |       |
| job_title  | varchar(20) | YES  |     | NULL    |       |
| min_salary | int         | YES  |     | NULL    |       |
| max_salary | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.022 sec)

mysql> select *from jobs
    -> ;
Empty set (0.009 sec)

mysql> alter table jobs
    -> modify column max_salary check(max_salary<=25000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'check(max_salary<=25000)' at line 2
mysql> alter table jobs
    -> modify column max_salary int check(max_salary<=25000);
Query OK, 0 rows affected (0.396 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc jobs;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| job_id     | int         | NO   | PRI | NULL    |       |
| job_title  | varchar(20) | YES  |     | NULL    |       |
| min_salary | int         | YES  |     | NULL    |       |
| max_salary | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.022 sec)

mysql> insert into jobs(job_id,job_title,max_salary)
    -> values(1,sales,25000);
ERROR 1054 (42S22): Unknown column 'sales' in 'field list'
mysql> insert into jobs(job_id,job_title,max_salary)
    -> values(1,'sales',25000);
Query OK, 1 row affected (0.025 sec)

mysql> table jobs;
+--------+-----------+------------+------------+
| job_id | job_title | min_salary | max_salary |
+--------+-----------+------------+------------+
|      1 | sales     |       NULL |      25000 |
+--------+-----------+------------+------------+
1 row in set (0.006 sec)

mysql> insert into jobs(job_id,job_title,max_salary)
    -> values('sales',25000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into jobs(job_id,job_title,max_salary)
    -> values(,'sales',25000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ','sales',25000)' at line 2
mysql> insert into jobs(job_title,max_salary)
    -> values('sales',25000);
ERROR 1364 (HY000): Field 'job_id' doesn't have a default value
mysql> insert into jobs(job_id,job_title,max_salary)
    -> values(2,'sales',26000);
ERROR 3819 (HY000): Check constraint 'jobs_chk_1' is violated.
mysql> insert into jobs(job_id,job_title,max_salary)
    -> values(2,'sales',20000);
Query OK, 1 row affected (0.040 sec)

mysql> table jobs;
+--------+-----------+------------+------------+
| job_id | job_title | min_salary | max_salary |
+--------+-----------+------------+------------+
|      1 | sales     |       NULL |      25000 |
|      2 | sales     |       NULL |      20000 |
+--------+-----------+------------+------------+
2 rows in set (0.009 sec)

mysql> alter table jobs
    -> modify column job_title varchar(20) not null;
Query OK, 0 rows affected (0.679 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc table
    -> jobs;
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | jobs  | NULL       | ALL  | NULL          | NULL | NULL    | NULL |    2 |   100.00 | NULL  |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0.094 sec)

mysql> desc jobs;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| job_id     | int         | NO   | PRI | NULL    |       |
| job_title  | varchar(20) | NO   |     | NULL    |       |
| min_salary | int         | YES  |     | NULL    |       |
| max_salary | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.023 sec)

mysql> insert into jobs(job_id,job_title,max_salary)
    -> values(3,'sales',2000);
Query OK, 1 row affected (0.038 sec)

mysql> insert into jobs(job_id,max_salary)
    -> values(4,2000);
ERROR 1364 (HY000): Field 'job_title' doesn't have a default value


4. Write a SQL statement to create a table named job_histry including columns
employee_id, start_date, end_date, job_id and department_id.

mysql> create table job_histry
    -> (employee_id int,start_date date,end_date date,job_id int,department_id int);
Query OK, 0 rows affected (0.244 sec)

mysql> desc job_histry;
+---------------+------+------+-----+---------+-------+
| Field         | Type | Null | Key | Default | Extra |
+---------------+------+------+-----+---------+-------+
| employee_id   | int  | YES  |     | NULL    |       |
| start_date    | date | YES  |     | NULL    |       |
| end_date      | date | YES  |     | NULL    |       |
| job_id        | int  | YES  |     | NULL    |       |
| department_id | int  | YES  |     | NULL    |       |
+---------------+------+------+-----+---------+-------+
5 rows in set (0.028 sec)


5. Write an SQL statement to alter a table named countries to make sure that no
duplicate data against column country_id will be allowed at the time of
insertion.
mysql> alter table country
    -> modify column country_id int unique;
Query OK, 0 rows affected (0.121 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc country;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  | UNI | NULL    |       |
| country_name | varchar(20) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.017 sec)

mysql> insert into country(country_id,country_name,region_id)
    -> values(1,'india',2);
Query OK, 1 row affected (0.039 sec)

mysql> tabel country;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'tabel country' at line 1
mysql> table country;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | india        |         2 |
+------------+--------------+-----------+
1 row in set (0.006 sec)

mysql> insert into country(country_id,country_name,region_id)
    -> values(1,'india',2);
ERROR 1062 (23000): Duplicate entry '1' for key 'country.country_id'
mysql> desc jobs;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| job_id     | int         | NO   | PRI | NULL    |       |
| job_title  | varchar(20) | NO   |     | NULL    |       |
| min_salary | int         | YES  |     | NULL    |       |
| max_salary | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.023 sec)

6. Write an SQL statement to create a table named jobs including columns job_id,
job_title, min_salary and max_salary, and make sure that, the default value
for job_title is blank and min_salary is 8000 and max_salary is NULL will be
entered automatically at the time of insertion if no value assigned for the
specified columns.

mysql> alter table jobs
    -> modify column job_title varchar(20) default '',
    -> modify column min_salary int default 8000,
    -> modify column max_salary int default NULL;
Query OK, 0 rows affected (0.443 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc jobs;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| job_id     | int         | NO   | PRI | NULL    |       |
| job_title  | varchar(20) | YES  |     |         |       |
| min_salary | int         | YES  |     | 8000    |       |
| max_salary | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.027 sec)

mysql> insert into jobs(job_id,job_title,min_salary,max_salary)
    -> values(5,;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> insert into jobs(job_id)
    -> values(5);
Query OK, 1 row affected (0.040 sec)

mysql> table jobs;
+--------+-----------+------------+------------+
| job_id | job_title | min_salary | max_salary |
+--------+-----------+------------+------------+
|      1 | sales     |       NULL |      25000 |
|      2 | sales     |       NULL |      20000 |
|      3 | sales     |       NULL |       2000 |
|      5 |           |       8000 |       NULL |
+--------+-----------+------------+------------+
4 rows in set (0.007 sec)


7. Create a Department table with following structure.

mysql> create table department
    -> (DEPARTMENT_ID decimal(4,0) primary key,DEPARTMENT_NAME varchar(30) not null,MANAGER_ID decimal(6,0),LOCATION_ID
decimal(4,0));
Query OK, 0 rows affected (0.196 sec)

mysql> desc department;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | NULL    |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  |     | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.025 sec)

mysql> alter table department
    -> add primary key(MANAGER_ID);
ERROR 1068 (42000): Multiple primary key defined
mysql> drop table department;
Query OK, 0 rows affected (0.146 sec)

mysql> create table department
    -> (DEPARTMENT_ID decimal(4,0),DEPARTMENT_NAME varchar(30) not null,MANAGER_ID decimal(6,0),LOCATION_ID decimal(4,0)
);
Query OK, 0 rows affected (0.157 sec)

mysql> alter table department
    -> add primary key(DEPARTMENT_ID,MANAGER_ID);
Query OK, 0 rows affected (0.360 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc department;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | NULL    |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | NO   | PRI | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.022 sec)

mysql> alter table department
    -> modify column DEPARTMENT_ID decimal(4,0) default 0,
    -> modify column MANAGER_ID decimal(6,0) default 0,
    ->
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> alter table department
    -> modify column MANAGER_ID decimal(6,0) default 0,
    -> modify column DEPARTMENT_ID decimal(4,0) default 0;
Query OK, 0 rows affected (0.097 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc department;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | NO   | PRI | 0       |       |
| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.022 sec)

8. Write an SQL statement to create a table employees including columns
employee_id, first_name, last_name, email, phone_number hire_date, job_id,
salary, commission, manager_id and department_id and make sure that, the
employee_id column does not contain any duplicate value at the time of
insertion and the foreign key columns combined by department_id and
manager_id columns contain only those unique combination values, which
combinations are exists in the departments table.

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
| job_histry         |
| jobs               |
| lib_issue          |
| member             |
| project_details    |
| student            |
+--------------------+
11 rows in set (0.179 sec)

mysql> desc department;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | NO   | PRI | 0       |       |
| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.028 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emailid  | varchar(20) | YES  |     | NULL    |       |
| id       | int         | NO   | PRI | NULL    |       |
| name     | varchar(20) | NO   |     | NULL    |       |
| address  | varchar(20) | YES  |     | pune    |       |
| salary   | int         | YES  |     | NULL    |       |
| gender   | char(1)     | YES  |     | NULL    |       |
| i_date   | date        | YES  |     | NULL    |       |
| mobileno | int         | YES  | UNI | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.022 sec)

mysql> create table employees
    -> (employee_id int,first_name varchar(30),last_name varchar(30),email varchar(30),phone_number int,
    -> hire_date date,job_id int,salary int,commision int,manager_id int,department_id int);
Query OK, 0 rows affected (0.263 sec)

mysql> alter table employees
    -> add primary key(employee_id);
Query OK, 0 rows affected (0.522 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employees;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| first_name    | varchar(30) | YES  |     | NULL    |       |
| last_name     | varchar(30) | YES  |     | NULL    |       |
| email         | varchar(30) | YES  |     | NULL    |       |
| phone_number  | int         | YES  |     | NULL    |       |
| hire_date     | date        | YES  |     | NULL    |       |
| job_id        | int         | YES  |     | NULL    |       |
| salary        | int         | YES  |     | NULL    |       |
| commision     | int         | YES  |     | NULL    |       |
| manager_id    | int         | YES  |     | NULL    |       |
| department_id | int         | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
11 rows in set (0.026 sec)

mysql> alter table employees
    -> modify column manager_id decimal(6,0),
    -> modify column department_id decimal(4,0);
Query OK, 0 rows affected (0.382 sec)
Records: 0  Duplicates: 0  Warnings: 0

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
| manager_id    | decimal(6,0) | YES  |     | NULL    |       |
| department_id | decimal(4,0) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
11 rows in set (0.023 sec)

mysql> insert into employees(employee_id,first_name,last_name,manager_id,department_id)
    -> values(1,"nikita","badakh",101,201);
Query OK, 1 row affected (0.048 sec)

mysql> table employees;
+-------------+------------+-----------+-------+--------------+-----------+--------+--------+-----------+------------+---------------+
| employee_id | first_name | last_name | email | phone_number | hire_date | job_id | salary | commision | manager_id | department_id |
+-------------+------------+-----------+-------+--------------+-----------+--------+--------+-----------+------------+---------------+
|           1 | nikita     | badakh    | NULL  |         NULL | NULL      |   NULL |   NULL |      NULL |        101 |           201 |
+-------------+------------+-----------+-------+--------------+-----------+--------+--------+-----------+------------+---------------+
1 row in set (0.007 sec)

mysql> alter table employees
    -> ;
Query OK, 0 rows affected (0.034 sec)

mysql> insert into department;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
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

mysql> insert into department(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID)
    -> values(201,"it",101);
Query OK, 1 row affected (0.043 sec)


mysql> insert into department(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID)
    -> values(202,"it",101);
Query OK, 1 row affected (0.051 sec)

mysql> alter table employees
    -> change column manager_id department_id decimal(4,0),
    -> change column department_id manager_id decimal(6,0);
Query OK, 1 row affected (0.387 sec)
Records: 1  Duplicates: 0  Warnings: 0

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
| department_id | decimal(4,0) | YES  |     | NULL    |       |
| manager_id    | decimal(6,0) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
11 rows in set (0.026 sec)

mysql> table department;
+---------------+-----------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME | MANAGER_ID | LOCATION_ID |
+---------------+-----------------+------------+-------------+
|           201 | it              |        101 |        NULL |
|           202 | it              |        101 |        NULL |
+---------------+-----------------+------------+-------------+
2 rows in set (0.007 sec)

mysql> table employees;
+-------------+------------+-----------+-------+--------------+-----------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email | phone_number | hire_date | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+-------+--------------+-----------+--------+--------+-----------+---------------+------------+
|           1 | nikita     | badakh    | NULL  |         NULL | NULL      |   NULL |   NULL |      NULL |           101 |        201 |
+-------------+------------+-----------+-------+--------------+-----------+--------+--------+-----------+---------------+------------+
1 row in set (0.008 sec)


mysql> insert into employees(employee_id,first_name,last_name,manager_id,department_id)
    -> values(2,"nikita","badakh",101,202);
Query OK, 1 row affected (0.036 sec)

mysql> table employees;
+-------------+------------+-----------+-------+--------------+-----------+--------+--------+-----------+---------------+------------+
| employee_id | first_name | last_name | email | phone_number | hire_date | job_id | salary | commision | department_id | manager_id |
+-------------+------------+-----------+-------+--------------+-----------+--------+--------+-----------+---------------+------------+
|           1 | nikita     | badakh    | NULL  |         NULL | NULL      |   NULL |   NULL |      NULL |           101 |        201 |
|           2 | nikita     | badakh    | NULL  |         NULL | NULL      |   NULL |   NULL |      NULL |           202 |        101 |
+-------------+------------+-----------+-------+--------------+-----------+--------+--------+-----------+---------------+------------+
2 rows in set (0.009 sec)

mysql> alter table employees
    -> add foreign key(department_id,manager_id)
    -> references department(DEPARTMENT_ID,MANAGER_ID);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`firstbit`.`#sql-1fb8_12`, CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`, `manager_id`) REFERENCES `department` (`DEPARTMENT_ID`, `MANAGER_ID`))
mysql> delete from department;
Query OK, 2 rows affected (0.060 sec)

mysql> insert into department(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID)
    -> values(101,"it",201);
Query OK, 1 row affected (0.026 sec)

mysql> insert into department(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID)
    -> values(202,"it",101);
Query OK, 1 row affected (0.033 sec)

mysql> alter table employees
    -> add foreign key(department_id,manager_id)
    -> references department(DEPARTMENT_ID,MANAGER_ID);
Query OK, 2 rows affected (0.458 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql>
