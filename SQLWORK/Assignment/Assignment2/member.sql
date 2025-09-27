1) Create the table Member, Books and Issue without any constraints as
mentioned in the schema description above.

mysql> use firstbit;
Database changed
mysql> create table Member
    -> (member_id int,member_name varchar(30),member_address varchar(50),Acc_Open_Date date,
    -> membership_type varchar(20),fees_paid int,max_book_allowed int,penality_amount decimal(7,2));
Query OK, 0 rows affected (0.966 sec)

mysql> alter table Member
    -> add primary key(member_id);
Query OK, 0 rows affected (0.497 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> create table books
    -> (book_no int,book_name varchar(30),author_name varchar(30),cost decimal(7,2),category char(10));
Query OK, 0 rows affected (0.172 sec)

mysql> create table issue
    -> (lib_issue_id int,book_no int,member_id int,issue_date date,return_id date);
Query OK, 0 rows affected (0.242 sec)

2) View the structure of the tables.
mysql> desc Member;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| member_id        | int          | NO   | PRI | NULL    |       |
| member_name      | varchar(30)  | YES  |     | NULL    |       |
| member_address   | varchar(50)  | YES  |     | NULL    |       |
| Acc_Open_Date    | date         | YES  |     | NULL    |       |
| membership_type  | varchar(20)  | YES  |     | NULL    |       |
| fees_paid        | int          | YES  |     | NULL    |       |
| max_book_allowed | int          | YES  |     | NULL    |       |
| penality_amount  | decimal(7,2) | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
8 rows in set (0.287 sec)

mysql> desc books;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| book_no     | int          | YES  |     | NULL    |       |
| book_name   | varchar(30)  | YES  |     | NULL    |       |
| author_name | varchar(30)  | YES  |     | NULL    |       |
| cost        | decimal(7,2) | YES  |     | NULL    |       |
| category    | char(10)     | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.027 sec)

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | YES  |     | NULL    |       |
| book_no      | int  | YES  |     | NULL    |       |
| member_id    | int  | YES  |     | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_id    | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.030 sec)

3) Drop the Member table.
mysql> drop table Member;
Query OK, 0 rows affected (0.177 sec)

4) Create the table Member again as per the schema description with the
following constraints.
a. Member_Id – Primary Key
b. Membership_type - ‘Lifetime’,’ Annual’, ‘Half Yearly’,’ Quarterly’

mysql> create table Member
    -> (member_id int primary key,member_name varchar(30),member_address varchar(50),Acc_Open_Date date,
    ->
    -> membership_type varchar(20),fees_paid int,max_book_allowed int,penality_amount decimal(7,2));
Query OK, 0 rows affected (0.181 sec)

mysql> desc Member;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| member_id        | int          | NO   | PRI | NULL    |       |
| member_name      | varchar(30)  | YES  |     | NULL    |       |
| member_address   | varchar(50)  | YES  |     | NULL    |       |
| Acc_Open_Date    | date         | YES  |     | NULL    |       |
| membership_type  | varchar(20)  | YES  |     | NULL    |       |
| fees_paid        | int          | YES  |     | NULL    |       |
| max_book_allowed | int          | YES  |     | NULL    |       |
| penality_amount  | decimal(7,2) | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
8 rows in set (0.026 sec)

mysql> alter table Member
    -> modify column membership_type varchar(20) check(membership_type in 'Lifetime','Annual','Quarterly');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''Lifetime','Annual','Quarterly')' at line 2
mysql> alter table Member
    -> modify column membership_type varchar(20) check(membership_type in ('Lifetime','Annual','Quarterly'));
Query OK, 0 rows affected (0.481 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Member;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| member_id        | int          | NO   | PRI | NULL    |       |
| member_name      | varchar(30)  | YES  |     | NULL    |       |
| member_address   | varchar(50)  | YES  |     | NULL    |       |
| Acc_Open_Date    | date         | YES  |     | NULL    |       |
| membership_type  | varchar(20)  | YES  |     | NULL    |       |
| fees_paid        | int          | YES  |     | NULL    |       |
| max_book_allowed | int          | YES  |     | NULL    |       |
| penality_amount  | decimal(7,2) | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
8 rows in set (0.026 sec)

5) Modify the table Member increase the width of the member name to 30
characters.
mysql> alter table Member
    -> modify column member_name varchar(40);
Query OK, 0 rows affected (0.103 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Member;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| member_id        | int          | NO   | PRI | NULL    |       |
| member_name      | varchar(40)  | YES  |     | NULL    |       |
| member_address   | varchar(50)  | YES  |     | NULL    |       |
| Acc_Open_Date    | date         | YES  |     | NULL    |       |
| membership_type  | varchar(20)  | YES  |     | NULL    |       |
| fees_paid        | int          | YES  |     | NULL    |       |
| max_book_allowed | int          | YES  |     | NULL    |       |
| penality_amount  | decimal(7,2) | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
8 rows in set (0.024 sec)

6) Add a column named as Reference of Char(30) to Issue table.
mysql> alter table issue
    -> add column reference char(30);
Query OK, 0 rows affected (0.370 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc issue;
+--------------+----------+------+-----+---------+-------+
| Field        | Type     | Null | Key | Default | Extra |
+--------------+----------+------+-----+---------+-------+
| lib_issue_id | int      | YES  |     | NULL    |       |
| book_no      | int      | YES  |     | NULL    |       |
| member_id    | int      | YES  |     | NULL    |       |
| issue_date   | date     | YES  |     | NULL    |       |
| return_id    | date     | YES  |     | NULL    |       |
| reference    | char(30) | YES  |     | NULL    |       |
+--------------+----------+------+-----+---------+-------+
6 rows in set (0.081 sec)

7) Delete/Drop the column Reference from Issue.
mysql> alter table issue
    -> drop column reference;
Query OK, 0 rows affected (0.341 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | YES  |     | NULL    |       |
| book_no      | int  | YES  |     | NULL    |       |
| member_id    | int  | YES  |     | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_id    | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.026 sec)

8) Rename the table Issue to Lib_Issue.
mysql> alter table issue
    -> rename to lib_issue;
Query OK, 0 rows affected (0.156 sec)

mysql> desc lib_issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | YES  |     | NULL    |       |
| book_no      | int  | YES  |     | NULL    |       |
| member_id    | int  | YES  |     | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_id    | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.028 sec)
 
9) Insert following data in table Member.
mysql> insert into Member
    -> values(1,'richa sharma','pune',10-12-05,'Lifetime',25000,5,50);
ERROR 1292 (22007): Incorrect date value: '-7' for column 'Acc_Open_Date' at row 1
mysql> insert into Member
    -> values(1,'richa sharma','pune',10/12/05,'Lifetime',25000,5,50);
ERROR 1292 (22007): Incorrect date value: '0.16666000' for column 'Acc_Open_Date' at row 1
mysql> insert into Member
    -> values(1,'richa sharma','pune','10-12-05','Lifetime',25000,5,50);
Query OK, 1 row affected (0.072 sec)

mysql> insert into Member
    -> values(1,'richa sharma','pune',curdate(),'Lifetime',25000,5,50);
ERROR 1062 (23000): Duplicate entry '1' for key 'member.PRIMARY'
mysql> insert into Member
    -> values(2,'richa sharma','pune',curdate(),'Lifetime',25000,5,50);
Query OK, 1 row affected (0.042 sec)

mysql> table Member;
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |
 50.00 |
|         2 | richa sharma | pune           | 2025-09-22    | Lifetime        |     25000 |                5 |
 50.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
2 rows in set (0.027 sec)

mysql> insert into Member
    -> values(2,'richa sharma','pune',curdate(),'Lifetime',25000,3);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into Member(member_id,member_name,member_address,Acc_Open_Date,membership_type,fees_paid,max_book_allowed)

    -> values(2,'richa sharma','pune',curdate(),'Lifetime',25000,3);
ERROR 1062 (23000): Duplicate entry '2' for key 'member.PRIMARY'
mysql> insert into Member(member_id,member_name,member_address,Acc_Open_Date,membership_type,fees_paid,max_book_allowed)

    -> values(3,'richa sharma','pune',curdate(),'Lifetime',25000,3);
Query OK, 1 row affected (0.041 sec)

mysql> table Member;
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |
 50.00 |
|         2 | richa sharma | pune           | 2025-09-22    | Lifetime        |     25000 |                5 |           50.00 |
|         3 | richa sharma | pune           | 2025-09-22    | Lifetime        |     25000 |                3 |
  NULL |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
3 rows in set (0.007 sec)

10) Insert at least 5 records with suitable data.

mysql> insert into Member
    -> values(4,'garima sen','pune','2-3-5','Lifetime',25000,6,40);
Query OK, 1 row affected (0.111 sec)

mysql> insert into Member
    -> values(5,'garima','pune','2-13-5','Lifetime',25000,7,60);
ERROR 1292 (22007): Incorrect date value: '2-13-5' for column 'Acc_Open_Date' at row 1
mysql> insert into Member
    -> values(5,'garima','pune','2-12-5','Lifetime',25000,7,60);
Query OK, 1 row affected (0.042 sec)

mysql> table Member;
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |
 50.00 |
|         2 | richa sharma | pune           | 2025-09-22    | Lifetime        |     25000 |                5 |
 50.00 |
|         3 | richa sharma | pune           | 2025-09-22    | Lifetime        |     25000 |                3 |
  NULL |
|         4 | garima sen   | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |
 40.00 |
|         5 | garima       | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |
 60.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
5 rows in set (0.009 sec)

11) Modify the column Member_name. Decrease the width of the member
name to 20 characters. (If it does not allow state the reason for that).
mysql> alter table Member
    -> modify column member_name varchar(20);
Query OK, 5 rows affected (0.766 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc Member;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| member_id        | int          | NO   | PRI | NULL    |       |
| member_name      | varchar(20)  | YES  |     | NULL    |       |
| member_address   | varchar(50)  | YES  |     | NULL    |       |
| Acc_Open_Date    | date         | YES  |     | NULL    |       |
| membership_type  | varchar(20)  | YES  |     | NULL    |       |
| fees_paid        | int          | YES  |     | NULL    |       |
| max_book_allowed | int          | YES  |     | NULL    |       |
| penality_amount  | decimal(7,2) | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
8 rows in set (0.031 sec)

12) Try to insert a record with Max_Books_Allowed = 110, Observe the
error that comes.
mysql> alter table Member
    -> modify column max_book_allowed int check(max_book_allowed<=10);
Query OK, 5 rows affected (0.709 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> insert into Member
    -> values(6,'garima','pune','2-12-5','Lifetime',25000,110,60);
ERROR 3819 (HY000): Check constraint 'member_chk_2' is violated.

13) Generate another table named Member101 using a Create command
along with a simple SQL query on member table.

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
| job_histry         |
| jobs               |
| lib_issue          |
| member             |
| project_details    |
| student            |
+--------------------+
12 rows in set (0.028 sec)

14) Add the constraints on columns max_books_allowed and penalty_amt
as follows
a. max_books_allowed < 100
b. penalty_amt maximum 1000
Also give names to the constraints.

mysql> create table member101
    -> (member_id int primary key,member_name varchar(20) not null,member_address varchar(20),Acc_open_date date,members
hip_bookvarchar(30) check(membership_book in('lifetime','annual','half yearly')),fees_paid int,max_books_allowed int con
straint che_max check(max_books_allowed<100),penalty_amount int default 1000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(30) check(membership_book in('lifetime','annual','half yearly')),fees_paid int,' at line 2
mysql> create table member101
    -> (member_id int primary key,member_name varchar(20) not null,member_address varchar(20),Acc_open_date date,membership_book varchar(30) check(membership_book in('lifetime','annual','half yearly')),fees_paid int,max_books_allowed int co
nstraint che_max check(max_books_allowed<100),penalty_amount int default 1000);
Query OK, 0 rows affected (0.222 sec)

mysql> desc member101;
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| member_id         | int         | NO   | PRI | NULL    |       |
| member_name       | varchar(20) | NO   |     | NULL    |       |
| member_address    | varchar(20) | YES  |     | NULL    |       |
| Acc_open_date     | date        | YES  |     | NULL    |       |
| membership_book   | varchar(30) | YES  |     | NULL    |       |
| fees_paid         | int         | YES  |     | NULL    |       |
| max_books_allowed | int         | YES  |     | NULL    |       |
| penalty_amount    | int         | YES  |     | 1000    |       |
+-------------------+-------------+------+-----+---------+-------+
8 rows in set (0.089 sec)

mysql> show create table member101;
+-----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table     | Create Table




                  |
+-----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| member101 | CREATE TABLE `member101` (
  `member_id` int NOT NULL,
  `member_name` varchar(20) NOT NULL,
  `member_address` varchar(20) DEFAULT NULL,
  `Acc_open_date` date DEFAULT NULL,
  `membership_book` varchar(30) DEFAULT NULL,
  `fees_paid` int DEFAULT NULL,
  `max_books_allowed` int DEFAULT NULL,
  `penalty_amount` int DEFAULT '1000',
  PRIMARY KEY (`member_id`),
  CONSTRAINT `che_max` CHECK ((`max_books_allowed` < 100)),
  CONSTRAINT `member101_chk_1` CHECK ((`membership_book` in (_cp850'lifetime',_cp850'annual',_cp850'half yearly')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.041 sec)

mysql> insert into member101(member_id,member_name,max_book_allowed,penalty_amount)
    -> values(1,"nikita",67,2000);
ERROR 1054 (42S22): Unknown column 'max_book_allowed' in 'field list'
mysql> insert into member101(member_id,member_name,max_books_allowed,penalty_amount)
    -> values(1,"nikita",67,2000);
Query OK, 1 row affected (0.040 sec)

mysql> table member101;
+-----------+-------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
| member_id | member_name | member_address | Acc_open_date | membership_book | fees_paid | max_books_allowed | penalty_amount |
+-----------+-------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
|         1 | nikita      | NULL           | NULL          | NULL            |      NULL |                67 |
 2000 |
+-----------+-------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
1 row in set (0.007 sec)

15) Drop the table books.
mysql> drop table books;
Query OK, 0 rows affected (0.136 sec)

16) Create table Books again as per the schema description with the
following constraints.
a. Book_No – Primary Key
b. Book_Name – Not Null
c. Category – System, Fiction, Database, RDBMS, Others.

mysql> create table books
    -> (book_no int primary key,book_name varchar(30) not null,category char(10) check(category in('system','fiction','d
atabase','rdbms')));
Query OK, 0 rows affected (0.159 sec)

mysql> alter table books
    -> add column author varchar(30)
    -> after book_name;
Query OK, 0 rows affected (0.272 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table books
    -> add column cost int
    -> after author;
Query OK, 0 rows affected (0.255 sec)
Records: 0  Duplicates: 0  Warnings: 0

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
5 rows in set (0.020 sec)

17) Insert data in Book table as follows:
18) Insert more records in Book table.
mysql> insert into books
    -> values(101,'let us c','denis ritche',450,'system');
Query OK, 1 row affected (0.031 sec)

mysql> insert into books
    -> values(102,'oracle-complete ref','loni',550,'database');
Query OK, 1 row affected (0.050 sec)

mysql> insert into books
    -> values(103,'mastering sql','loni',250,'database');
Query OK, 1 row affected (0.037 sec)

mysql> insert into books
    -> values(104,'pl-sql-ref','scott urman',750,'database');
Query OK, 1 row affected (0.041 sec)
19) View the data in the tables using simple SQL query.
mysql> table books;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     101 | let us c            | denis ritche |  450 | system   |
|     102 | oracle-complete ref | loni         |  550 | database |
|     103 | mastering sql       | loni         |  250 | database |
|     104 | pl-sql-ref          | scott urman  |  750 | database |
+---------+---------------------+--------------+------+----------+
4 rows in set (0.007 sec)

20) Insert into Book following data.
mysql> insert into books
    -> values(105,'national geographic','adis scott',1000,'science');
ERROR 3819 (HY000): Check constraint 'books_chk_1' is violated.
mysql> insert into books
    -> values(105,'national geographic','adis scott',1000,'fiction');
Query OK, 1 row affected (0.039 sec)

21) Rename the table Lib_Issue to Issue.
mysql> alter table lib_issue
    -> rename to issue;
Query OK, 0 rows affected (0.162 sec)

22) Drop table Issue.
mysql> drop table issue;
Query OK, 0 rows affected (0.174 sec)

23) As per the given structure Create table Issue again with following
constraints.
 Lib_Issue_Id-Primary key
 Book_No- foreign key
 Member_id - foreign key
 Issue_date
 Return_date.

mysql> create table issue
    -> (lib_issue_id int primary key,book_no int,foreign key(book_no) refrences books(book_no),member_id int,foreign key
(member_id) refrences member(member_id),issue_date date,return_date date);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'refrences books(book_no),member_id int,foreign key(member_id) refrences member(m' at line 2
mysql> create table issue
    -> (lib_issue_id int primary key,book_no int,foreign key(book_no) references books(book_no),member_id int,foreign ke
y(member_id) references member(member_id),issue_date date,return_date date);
Query OK, 0 rows affected (0.258 sec)


mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | NO   | PRI | NULL    |       |
| book_no      | int  | YES  | MUL | NULL    |       |
| member_id    | int  | YES  | MUL | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.029 sec)

24) Insert following data into Issue table.
mysql> insert into issue values(7001,101,1,"10-12-06"),
    -> (7002,102,2,"25-12-06"),
    -> (7003,104,1,"15-1-06"),
    -> (7004,101,1,"4-7-06"),
    -> (7005,104,2,"15-11-06"),
    -> (7006,101,3,"18-2-06");
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into issue(lib_issue_id,book_no,member_id,issue_date) values(7001,101,1,"10-12-06"),
    -> (7002,102,2,"25-12-06"),
    -> (7003,104,1,"15-1-06"),
    -> (7004,101,1,"4-7-06"),
    -> (7005,104,2,"15-11-06"),
    -> (7006,101,3,"18-2-06");
Query OK, 6 rows affected (0.045 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> table issue;
+--------------+---------+-----------+------------+-------------+
| lib_issue_id | book_no | member_id | issue_date | return_date |
+--------------+---------+-----------+------------+-------------+
|         7001 |     101 |         1 | 2010-12-06 | NULL        |
|         7002 |     102 |         2 | 2025-12-06 | NULL        |
|         7003 |     104 |         1 | 2015-01-06 | NULL        |
|         7004 |     101 |         1 | 0004-07-06 | NULL        |
|         7005 |     104 |         2 | 2015-11-06 | NULL        |
|         7006 |     101 |         3 | 2018-02-06 | NULL        |
+--------------+---------+-----------+------------+-------------+
6 rows in set (0.007 sec)

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | NO   | PRI | NULL    |       |
| book_no      | int  | YES  | MUL | NULL    |       |
| member_id    | int  | YES  | MUL | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.028 sec)

25) Remove the constraints on Issue table.
mysql> alter table issue
    -> drop primary key;
Query OK, 6 rows affected (0.479 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> show create table issue;
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table



                |
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| issue | CREATE TABLE `issue` (
  `lib_issue_id` int NOT NULL,
  `book_no` int DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  KEY `book_no` (`book_no`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`book_no`) REFERENCES `books` (`book_no`),
  CONSTRAINT `issue_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.008 sec)

mysql> alter table issue
    -> drop foreign key issue_ibfk_1,
    -> drop foreign key issue_ibfk_2;
Query OK, 0 rows affected (0.153 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | NO   |     | NULL    |       |
| book_no      | int  | YES  | MUL | NULL    |       |
| member_id    | int  | YES  | MUL | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.024 sec)

mysql> show index from issue;
+-------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table | Non_unique | Key_name  | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+-------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| issue |          1 | book_no   |            1 | book_no     | A         |           3 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| issue |          1 | member_id |            1 | member_id   | A         |           3 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+-------+------------+-----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0.136 sec)

mysql> alter table issue
    -> drop index book_no,
    -> drop index member_id;
Query OK, 0 rows affected (0.105 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | NO   |     | NULL    |       |
| book_no      | int  | YES  |     | NULL    |       |
| member_id    | int  | YES  |     | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.019 sec)

26) Insert a record in Issue table. The member_id should not exist in
member table.
mysql> alter table issue
    -> drop column member_id int;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'int' at line 2
mysql> alter table issue
    -> drop column member_id ;
Query OK, 0 rows affected (0.117 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | NO   |     | NULL    |       |
| book_no      | int  | YES  |     | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
4 rows in set (0.021 sec)

mysql> alter table issue
    -> add column member_id int;
Query OK, 0 rows affected (0.118 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | NO   |     | NULL    |       |
| book_no      | int  | YES  |     | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
| member_id    | int  | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.021 sec)

mysql> desc member;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| member_id        | int          | NO   | PRI | NULL    |       |
| member_name      | varchar(20)  | YES  |     | NULL    |       |
| member_address   | varchar(50)  | YES  |     | NULL    |       |
| Acc_Open_Date    | date         | YES  |     | NULL    |       |
| membership_type  | varchar(20)  | YES  |     | NULL    |       |
| fees_paid        | int          | YES  |     | NULL    |       |
| max_book_allowed | int          | YES  |     | NULL    |       |
| penality_amount  | decimal(7,2) | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
8 rows in set (0.029 sec)

mysql> alter table member
    -> drop column member_id;
Query OK, 5 rows affected (0.411 sec)
Records: 5  Duplicates: 0  Warnings: 0

27) Now enable the constraints of Issue table. Observe the error.
mysql> alter table issue
    -> add primary key(lib_issue_id);
Query OK, 0 rows affected (0.528 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table issue
    -> add foreign key(book_no),
    -> add foreign key(member_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
add foreign key(member_id)' at line 2
mysql> alter table issue
    -> add foreign key(book_no),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',' at line 2
mysql> alter table issue
    -> add foreign key(book_no);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> alter table issue
    -> add foreign key(book_no) references books(book_no);
Query OK, 6 rows affected (0.458 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | NO   | PRI | NULL    |       |
| book_no      | int  | YES  | MUL | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
| member_id    | int  | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.023 sec)

mysql> table member;
+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |           50.00 |
| richa sharma | pune           | 2025-09-22    | Lifetime        |     25000 |                5 |           50.00 |
| richa sharma | pune           | 2025-09-22    | Lifetime        |     25000 |                3 |            NULL |
| garima sen   | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |           40.00 |
| garima       | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |           60.00 |
+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
5 rows in set (0.006 sec)

28) Delete the record inserted at Q-27) and enable the constraints.
29) Try to delete the record of member id 1 from member table and
observe the error .
mysql> delete from member where member_id=1;
ERROR 1054 (42S22): Unknown column 'member_id' in 'where clause'

30) View the data and structure of all the three tables Member,
Issue, Book.
mysql> desc member;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| member_name      | varchar(20)  | YES  |     | NULL    |       |
| member_address   | varchar(50)  | YES  |     | NULL    |       |
| Acc_Open_Date    | date         | YES  |     | NULL    |       |
| membership_type  | varchar(20)  | YES  |     | NULL    |       |
| fees_paid        | int          | YES  |     | NULL    |       |
| max_book_allowed | int          | YES  |     | NULL    |       |
| penality_amount  | decimal(7,2) | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
7 rows in set (0.022 sec)

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
5 rows in set (0.023 sec)

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | NO   | PRI | NULL    |       |
| book_no      | int  | YES  | MUL | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
| member_id    | int  | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.021 sec)

31) Modify the Return_Date of 7004,7005 to 15 days after the
Issue_date.
mysql>
mysql> update issue set return_date="19-7-6","30-11-6" where lib_issue_id=7004 || lib_issue_id=7005;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"30-11-6" where lib_issue_id=7004 || lib_issue_id=7005' at line 1
mysql> update issue set return_date="19-7-6" where lib_issue_id=7004 || lib_issue_id=7005;
Query OK, 2 rows affected, 1 warning (0.052 sec)
Rows matched: 2  Changed: 2  Warnings: 1

mysql> table issue;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7001 |     101 | 2010-12-06 | NULL        |      NULL |
|         7002 |     102 | 2025-12-06 | NULL        |      NULL |
|         7003 |     104 | 2015-01-06 | NULL        |      NULL |
|         7004 |     101 | 0004-07-06 | 2019-07-06  |      NULL |
|         7005 |     104 | 2015-11-06 | 2019-07-06  |      NULL |
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
6 rows in set (0.008 sec)

mysql> update issue set member_id=1 where lib_issue_id=7001;
Query OK, 1 row affected (0.038 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> table issue;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7001 |     101 | 2010-12-06 | NULL        |         1 |
|         7002 |     102 | 2025-12-06 | NULL        |      NULL |
|         7003 |     104 | 2015-01-06 | NULL        |      NULL |
|         7004 |     101 | 0004-07-06 | 2019-07-06  |      NULL |
|         7005 |     104 | 2015-11-06 | 2019-07-06  |      NULL |
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
6 rows in set (0.007 sec)


mysql> delete from issue where member_id=1;
Query OK, 1 row affected (0.080 sec)

mysql> table issue;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7002 |     102 | 2025-12-06 | NULL        |      NULL |
|         7003 |     104 | 2015-01-06 | NULL        |      NULL |
|         7004 |     101 | 0004-07-06 | 2019-07-06  |      NULL |
|         7005 |     104 | 2015-11-06 | 2019-07-06  |      NULL |
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
5 rows in set (0.007 sec)

mysql> update issue set member_id=1 where lib_issue_id=7002;
Query OK, 1 row affected (0.082 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> delete from issue where member_id=1 && issue_date<"16-12-6";
Query OK, 0 rows affected, 1 warning (0.030 sec)

mysql> table issue;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7002 |     102 | 2025-12-06 | NULL        |         1 |
|         7003 |     104 | 2015-01-06 | NULL        |      NULL |
|         7004 |     101 | 0004-07-06 | 2019-07-06  |      NULL |
|         7005 |     104 | 2015-11-06 | 2019-07-06  |      NULL |
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
5 rows in set (0.006 sec)

32) Remove all the records from Issue table where member_ID is 1
and Issue date in before 10-Dec-06.
mysql> delete from issue where member_id=1 && issue_date<"2026-12-6";
Query OK, 1 row affected, 1 warning (0.040 sec)

mysql> table issue;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7003 |     104 | 2015-01-06 | NULL        |      NULL |
|         7004 |     101 | 0004-07-06 | 2019-07-06  |      NULL |
|         7005 |     104 | 2015-11-06 | 2019-07-06  |      NULL |
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
4 rows in set (0.007 sec)

mysql> table books;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     101 | let us c            | denis ritche |  450 | system   |
|     102 | oracle-complete ref | loni         |  550 | database |
|     103 | mastering sql       | loni         |  250 | database |
|     104 | pl-sql-ref          | scott urman  |  750 | database |
|     105 | national geographic | adis scott   | 1000 | fiction  |
+---------+---------------------+--------------+------+----------+
5 rows in set (0.015 sec)

33) Remove all the records from Book table with category other
than RDBMS and Database.
mysql> delete from books where category in("system","fiction");
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`firstbit`.`issue`, CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`book_no`) REFERENCES `books` (`book_no`))
mysql> alter table issue
    -> drop foreign key issue_ibfk_1;
Query OK, 0 rows affected (0.120 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc issue,
    -> delete from books where category in("system","fiction");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
delete from books where category in("system","fiction")' at line 1
mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | NO   | PRI | NULL    |       |
| book_no      | int  | YES  | MUL | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
| member_id    | int  | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.020 sec)

mysql> delete from books where category in("system","fiction");
Query OK, 2 rows affected (0.053 sec)

mysql> table books;
+---------+---------------------+-------------+------+----------+
| book_no | book_name           | author      | cost | category |
+---------+---------------------+-------------+------+----------+
|     102 | oracle-complete ref | loni        |  550 | database |
|     103 | mastering sql       | loni        |  250 | database |
|     104 | pl-sql-ref          | scott urman |  750 | database |
+---------+---------------------+-------------+------+----------+
3 rows in set (0.006 sec)

34) Remove the table Member.
mysql> delete from member;
Query OK, 5 rows affected (0.038 sec)

35) Remove the table Book.
mysql> delete from books;
Query OK, 3 rows affected (0.038 sec)

mysql> table books;
Empty set (0.007 sec)

mysql> table member;
Empty set (0.006 sec)

mysql>