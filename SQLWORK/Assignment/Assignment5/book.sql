Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
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
14 rows in set (0.048 sec)

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
5 rows in set (0.169 sec)

mysql> select *from issue;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7003 |     104 | 2015-01-06 | NULL        |      NULL |
|         7004 |     101 | 0004-07-06 | 2019-07-06  |      NULL |
|         7005 |     104 | 2015-11-06 | 2019-07-06  |      NULL |
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
4 rows in set (0.114 sec)

mysql> select *from member;
Empty set (0.062 sec)

mysql> select *from member101;
+-----------+-------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
| member_id | member_name | member_address | Acc_open_date | membership_book | fees_paid | max_books_allowed | penalty_amount |
+-----------+-------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
|         1 | nikita      | NULL           | NULL          | NULL
 |      NULL |                67 |           2000 |
+-----------+-------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
1 row in set (0.075 sec)

mysql>
mysql> select *from books;
Empty set (0.074 sec)

mysql> insert into books
    -> values(101,'let us c','denis ritche',450,'system'),(102,'oracle-compl
ete ref','loni',550,'database'),(103,'mastering sql','loni',250,'database'),(104,'pl-sql-ref','scott urman',750,'database');
Query OK, 4 rows affected (0.085 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> insert into Member
    -> values(1,'richa sharma','pune','10-12-05','Lifetime',25000,5,50),(2,'
richa sharma','pune',curdate(),'Lifetime',25000,5,50),(3,'richa sharma','pun
e',curdate(),'Lifetime',25000,3),(4,'garima sen','pune','2-3-5','Lifetime',25000,6,40),(5,'garima','pune','2-12-5','Lifetime',25000,7,60);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
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
7 rows in set (0.047 sec)


mysql> alter table member
    -> add column member_id int
    -> first;
Query OK, 0 rows affected (0.785 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table member
    -> add primary key(member_id);
Query OK, 0 rows affected (0.299 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into Member
    -> values(1,'richa sharma','pune','10-12-05','Lifetime',25000,5,50),(2,'richa sharma','pune',curdate(),'Lifetime',25000,5,50),(3,'richa sharma','pune',curdate(),'Lifetime',25000,3,60),(4,'garima sen','pune','2-3-5','Lifetime
',25000,6,40),(5,'garima','pune','2-12-5','Lifetime',25000,7,60);
Query OK, 5 rows affected (0.050 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from issue;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7003 |     104 | 2015-01-06 | NULL        |      NULL |
|         7004 |     101 | 0004-07-06 | 2019-07-06  |      NULL |
|         7005 |     104 | 2015-11-06 | 2019-07-06  |      NULL |
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
4 rows in set (0.009 sec)

mysql> select *from books;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     101 | let us c            | denis ritche |  450 | system   |
|     102 | oracle-complete ref | loni         |  550 | database |
|     103 | mastering sql       | loni         |  250 | database |
|     104 | pl-sql-ref          | scott urman  |  750 | database |
+---------+---------------------+--------------+------+----------+
4 rows in set (0.005 sec)

mysql> select *from member;
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |           50.00 |
|         2 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                5 |           50.00 |
|         3 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                3 |           60.00 |
|         4 | garima sen   | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |           40.00 |
|         5 | garima       | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |           60.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
5 rows in set (0.030 sec)

1) List all the books that are written by Author Loni and has price
less then 600.

mysql> select book_name from books where author="loni" and cost<600;
+---------------------+
| book_name           |
+---------------------+
| oracle-complete ref |
| mastering sql       |
+---------------------+
2 rows in set (0.030 sec)

2) List the Issue details for the books that are not returned yet.
mysql> select *from issue where return_date is null;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7003 |     104 | 2015-01-06 | NULL        |      NULL |
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
2 rows in set (0.007 sec)

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
5 rows in set (0.048 sec)

3) Update all the blank return_date with 31-Dec-06 excluding 7005
and 7006.

mysql> update issue set return_date="31-12-06" where lib_issue_id not in(700
5,7006);
Query OK, 2 rows affected (0.054 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select *from issue;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7003 |     104 | 2015-01-06 | 2031-12-06  |      NULL |
|         7004 |     101 | 0004-07-06 | 2031-12-06  |      NULL |
|         7005 |     104 | 2015-11-06 | 2019-07-06  |      NULL |
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
4 rows in set (0.009 sec)

4) List all the Issue details that have books issued for more then 30
days.
mysql> select *from issue where return_date is null and datediff(curdate(),i
ssue_date)>30;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
1 row in set (0.042 sec)

5) List all the books that have price in range of 500 to 750 and has

category as Database.

mysql> select *from books where cost between 500 and 750 and category="datab
ase";
+---------+---------------------+-------------+------+----------+
| book_no | book_name           | author      | cost | category |
+---------+---------------------+-------------+------+----------+
|     102 | oracle-complete ref | loni        |  550 | database |
|     104 | pl-sql-ref          | scott urman |  750 | database |
+---------+---------------------+-------------+------+----------+
2 rows in set (0.023 sec)

6) List all the books that belong to any one of the following
categories Science, Database, Fiction, Management.

mysql> select *from books where category in("science","database","fiction","
management");
+---------+---------------------+-------------+------+----------+
| book_no | book_name           | author      | cost | category |
+---------+---------------------+-------------+------+----------+
|     102 | oracle-complete ref | loni        |  550 | database |
|     103 | mastering sql       | loni        |  250 | database |
|     104 | pl-sql-ref          | scott urman |  750 | database |
+---------+---------------------+-------------+------+----------+
3 rows in set (0.009 sec)

7) List all the members in the descending order of Penalty due on
them.
mysql> select *from member order by penality_amount;
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         4 | garima sen   | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |           40.00 |
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |           50.00 |
|         2 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                5 |           50.00 |
|         3 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                3 |           60.00 |
|         5 | garima       | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |           60.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
5 rows in set (0.009 sec)

mysql> select *from member order by penality_amount desc;
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         3 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                3 |           60.00 |
|         5 | garima       | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |           60.00 |
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |           50.00 |
|         2 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                5 |           50.00 |
|         4 | garima sen   | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |           40.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
5 rows in set (0.007 sec)

8) Modify the price of book with id 103 to Rs 300 and category to
RDBMS.
mysql> update books set cost=300 where book_no=103 and category="database";
Query OK, 1 row affected (0.061 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from books;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     101 | let us c            | denis ritche |  450 | system   |
|     102 | oracle-complete ref | loni         |  550 | database |
|     103 | mastering sql       | loni         |  300 | database |
|     104 | pl-sql-ref          | scott urman  |  750 | database |
+---------+---------------------+--------------+------+----------+
4 rows in set (0.005 sec)

9) List all the books in ascending order of category and descending
order of price.
mysql> select *from books order by category;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     102 | oracle-complete ref | loni         |  550 | database |
|     103 | mastering sql       | loni         |  300 | database |
|     104 | pl-sql-ref          | scott urman  |  750 | database |
|     101 | let us c            | denis ritche |  450 | system   |
+---------+---------------------+--------------+------+----------+
4 rows in set (0.026 sec)

mysql> select *from books order by cost;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     103 | mastering sql       | loni         |  300 | database |
|     101 | let us c            | denis ritche |  450 | system   |
|     102 | oracle-complete ref | loni         |  550 | database |
|     104 | pl-sql-ref          | scott urman  |  750 | database |
+---------+---------------------+--------------+------+----------+
4 rows in set (0.007 sec)

mysql> select *from books order by cost desc;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     104 | pl-sql-ref          | scott urman  |  750 | database |
|     102 | oracle-complete ref | loni         |  550 | database |
|     101 | let us c            | denis ritche |  450 | system   |
|     103 | mastering sql       | loni         |  300 | database |
+---------+---------------------+--------------+------+----------+
4 rows in set (0.007 sec)

mysql> select *from books order by category,cost desc;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     104 | pl-sql-ref          | scott urman  |  750 | database |
|     102 | oracle-complete ref | loni         |  550 | database |
|     103 | mastering sql       | loni         |  300 | database |
|     101 | let us c            | denis ritche |  450 | system   |
+---------+---------------------+--------------+------+----------+
4 rows in set (0.008 sec)

10) List all the books that contain word SQL in the name of the book.
mysql> select *from books where book_name like "%sql%";
+---------+---------------+-------------+------+----------+
| book_no | book_name     | author      | cost | category |
+---------+---------------+-------------+------+----------+
|     103 | mastering sql | loni        |  300 | database |
|     104 | pl-sql-ref    | scott urman |  750 | database |
+---------+---------------+-------------+------+----------+
2 rows in set (0.028 sec)

11) List the Lib_Issue_Id, Issue_Date, Return_Date and No of days
Book was issued.
mysql> select lib_issue_id,issue_date,return_date,datediff(curdate(),issue_date) as no_of_days_issue from issue;
+--------------+------------+-------------+------------------+
| lib_issue_id | issue_date | return_date | no_of_days_issue |
+--------------+------------+-------------+------------------+
|         7003 | 2015-01-06 | 2031-12-06  |             3921 |
|         7004 | 0004-07-06 | 2031-12-06  |           738242 |
|         7005 | 2015-11-06 | 2019-07-06  |             3617 |
|         7006 | 2018-02-06 | NULL        |             2794 |
+--------------+------------+-------------+------------------+
4 rows in set (0.009 sec)

12) Find the details of the member of the Library in the order of their
joining the library.
mysql> select lib_issue_id,issue_date,return_date,datediff(return_date,issue
_date) as no_of_days_issue from issue;
+--------------+------------+-------------+------------------+
| lib_issue_id | issue_date | return_date | no_of_days_issue |
+--------------+------------+-------------+------------------+
|         7003 | 2015-01-06 | 2031-12-06  |             6178 |
|         7004 | 0004-07-06 | 2031-12-06  |           740499 |
|         7005 | 2015-11-06 | 2019-07-06  |             1338 |
|         7006 | 2018-02-06 | NULL        |             NULL |
+--------------+------------+-------------+------------------+
4 rows in set (0.065 sec)

mysql> select *from member order by Acc_Open_Date;
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         4 | garima sen   | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |           40.00 |
|         5 | garima       | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |           60.00 |
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |           50.00 |
|         2 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                5 |           50.00 |
|         3 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                3 |           60.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
5 rows in set (0.011 sec)

mysql> update issue set member_id =1 where book_no=7003;
Query OK, 0 rows affected (0.015 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> update issue set member_id =2 where book_no=7004;
Query OK, 0 rows affected (0.006 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> update issue set member_id =3 where book_no=7005;
Query OK, 0 rows affected (0.008 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> update issue set member_id =4 where book_no=7006;
Query OK, 0 rows affected (0.007 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select *from issue;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7003 |     104 | 2015-01-06 | 2031-12-06  |      NULL |
|         7004 |     101 | 0004-07-06 | 2031-12-06  |      NULL |
|         7005 |     104 | 2015-11-06 | 2019-07-06  |      NULL |
|         7006 |     101 | 2018-02-06 | NULL        |      NULL |
+--------------+---------+------------+-------------+-----------+
4 rows in set (0.008 sec)

mysql> update issue set member_id =1;
Query OK, 4 rows affected (0.042 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> update issue set member_id =2;
Query OK, 4 rows affected (0.039 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> update issue set member_id =1 where lib_issue_id=7003;
Query OK, 1 row affected (0.042 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update issue set member_id =2 where lib_issue_id=7004;
Query OK, 0 rows affected (0.008 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> update issue set member_id =3 where lib_issue_id=7005;
Query OK, 1 row affected (0.030 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update issue set member_id =4 where lib_issue_id=7006;
Query OK, 1 row affected (0.040 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from issue;
+--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7003 |     104 | 2015-01-06 | 2031-12-06  |         1 |
|         7004 |     101 | 0004-07-06 | 2031-12-06  |         2 |
|         7005 |     104 | 2015-11-06 | 2019-07-06  |         3 |
|         7006 |     101 | 2018-02-06 | NULL        |         4 |
+--------------+---------+------------+-------------+-----------+
4 rows in set (0.006 sec)

mysql> select *from books;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     101 | let us c            | denis ritche |  450 | system   |
|     102 | oracle-complete ref | loni         |  550 | database |
|     103 | mastering sql       | loni         |  300 | database |
|     104 | pl-sql-ref          | scott urman  |  750 | database |
+---------+---------------------+--------------+------+----------+
4 rows in set (0.008 sec)

mysql> select *from member;
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |           50.00 |
|         2 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                5 |           50.00 |
|         3 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                3 |           60.00 |
|         4 | garima sen   | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |           40.00 |
|         5 | garima       | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |           60.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
5 rows in set (0.009 sec)

13) Display the count of total no of books issued to Member 101.
mysql> select count(*) from issue where member_id=1;
+----------+
| count(*) |
+----------+
|        1 |
+----------+
1 row in set (0.072 sec)

14) Display the total penalty due for all the members.
mysql> select sum(penality_amount) from member;
+----------------------+
| sum(penality_amount) |
+----------------------+
|               260.00 |
+----------------------+
1 row in set (0.100 sec)

15) Display the total no of members.
mysql> select count(*) from member;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.125 sec)

16) Display the total no of books issued.
mysql> select count(*) from books;
+----------+
| count(*) |
+----------+
|        4 |
+----------+
1 row in set (0.025 sec)

mysql> select count(*) from books where book_no in(select book_no from issue);
+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.053 sec)

mysql> select count(*) from issue;
+----------+
| count(*) |
+----------+
|        4 |
+----------+
1 row in set (0.009 sec)

17) Display the average membership fees paid by all the members.
mysql> select avg(fees_paid) from member;
+----------------+
| avg(fees_paid) |
+----------------+
|     25000.0000 |
+----------------+
1 row in set (0.022 sec)

18) List the various categories and count of books in each category.
mysql> select category,count(*) from books group by category;
+----------+----------+
| category | count(*) |
+----------+----------+
| system   |        1 |
| database |        3 |
+----------+----------+
2 rows in set (0.046 sec)

19) List the book_No and the number of times the book is issued in the
descending order of count.

mysql> select book_no,count(*) from issue group by book_no
    -> order by count(*) desc;
+---------+----------+
| book_no | count(*) |
+---------+----------+
|     101 |        2 |
|     104 |        2 |
+---------+----------+
2 rows in set (0.033 sec)

20) Find the maximum, minimum, total and average penalty amount in
the member table.
mysql> select max(penality_amount),min(penality_amount),sum(penality_amount),avg(penality_amount) from member;
+----------------------+----------------------+----------------------+----------------------+
| max(penality_amount) | min(penality_amount) | sum(penality_amount) | avg(penality_amount) |
+----------------------+----------------------+----------------------+----------------------+
|                60.00 |                40.00 |               260.00 |            52.000000 |
+----------------------+----------------------+----------------------+----------------------+
1 row in set (0.028 sec)

21) Display the member id and the no of books for each member that
has issued more then 2 books.
mysql> select member_id,count(*) from issue group by member_id having count(*)>2;
Empty set (0.029 sec)

mysql> select member_id,count(*) from issue group by member_id having count(*)>=2;
Empty set (0.007 sec)

mysql> select member_id,count(*) from issue group by member_id having count(*)<2;
+-----------+----------+
| member_id | count(*) |
+-----------+----------+
|         1 |        1 |
|         2 |        1 |
|         3 |        1 |
|         4 |        1 |
+-----------+----------+
4 rows in set (0.008 sec)

22) Display the member id, book no and no of times the same book is
issued by the member in the descending order of count.
mysql> select member_id,book_no,count(*) from issue group by member_id,book_
no having count(*)>1
    ->
    -> order by count(*) desc;
Empty set (0.361 sec)

mysql> select member_id,book_no,count(*) from issue group by member_id,book_no having count(*)>=1
    -> order by count(*) desc;
+-----------+---------+----------+
| member_id | book_no | count(*) |
+-----------+---------+----------+
|         1 |     104 |        1 |
|         2 |     101 |        1 |
|         3 |     104 |        1 |
|         4 |     101 |        1 |
+-----------+---------+----------+
4 rows in set (0.026 sec)

mysql> select month(issue_date) from issue;
+-------------------+
| month(issue_date) |
+-------------------+
|                 1 |
|                 7 |
|                11 |
|                 2 |
+-------------------+
4 rows in set (0.024 sec)

23) Display the month and no of books issued each month in the
descending order of count.
mysql> select month(issue_date),count(*) from issue group by issue_date order by count(*) desc;
+-------------------+----------+
| month(issue_date) | count(*) |
+-------------------+----------+
|                 1 |        1 |
|                 7 |        1 |
|                11 |        1 |
|                 2 |        1 |
+-------------------+----------+
4 rows in set (0.051 sec)


mysql> select month(issue_date),count(*) from issue group by month(issue_dat
e) order by count(*) desc;
+-------------------+----------+
| month(issue_date) | count(*) |
+-------------------+----------+
|                 1 |        1 |
|                 7 |        1 |
|                11 |        1 |
|                 2 |        1 |
+-------------------+----------+
4 rows in set (0.028 sec)

mysql> select book_no from issue where issue_date is null;
Empty set (0.056 sec)

24) List the book_no of all the books that are not issued to any
member so far.
mysql> select book_no from books where book_no not in (select book_no from i
ssue);
+---------+
| book_no |
+---------+
|     102 |
|     103 |
+---------+
2 rows in set (0.196 sec)

25) List all the member id that exist in member table and has also at
least one book issued by them.
mysql> select distinct m.member_id from member m inner join issue i
    -> on m.member_id=i.member_id;
+-----------+
| member_id |
+-----------+
|         1 |
|         2 |
|         3 |
|         4 |
+-----------+
4 rows in set (0.026 sec)

26) List the member ID with highest and lowest no of books issued.
mysql> select member_id,count(*) from issue group by member_id order by count(*) desc limit 1;
+-----------+----------+
| member_id | count(*) |
+-----------+----------+
|         1 |        1 |
+-----------+----------+
1 row in set (0.035 sec)

mysql> select member_id,count(*) from issue group by member_id order by count(*)  limit 1;
+-----------+----------+
| member_id | count(*) |
+-----------+----------+
|         1 |        1 |
+-----------+----------+
1 row in set (0.008 sec)


mysql> select *from issue where issue_date in(select year(issue_date) from i
ssue where issue_date in("december","july"));
Empty set, 2 warnings (0.915 sec)
27) List all the Issue_details for books issued in December and July
without using any arithmetic, Logical or comparison operator.
mysql> select *from issue where monthname(issue_date) in("december","july")
 +--------------+---------+------------+-------------+-----------+
| lib_issue_id | book_no | issue_date | return_date | member_id |
+--------------+---------+------------+-------------+-----------+
|         7004 |     101 | 0004-07-06 | 2031-12-06  |         2 |
+--------------+---------+------------+-------------+-----------+
1 row in set (0.054 sec)

mysql> select *from issue where issue_date in(select monthname(issue_date) f
rom issue where issue_date in("december","july"));
Empty set, 2 warnings (0.036 sec)

28) List the Book_No, Book_Name and Issue_date for all the books
that are issued in month of December and belong to category Database.

mysql> select i.book_no,issue_date,book_name from issue i inner join books b on i.book_no=b.book_no where monthname(issue_date)="december" and category=
"database";
Empty set (0.111 sec)

29) List the Member Id, Member Name and max books allowed in the
descending order of the max books allowed.
mysql> select member_id,member_name,max_book_allowed from member order by max_book_allowed desc;
+-----------+--------------+------------------+
| member_id | member_name  | max_book_allowed |
+-----------+--------------+------------------+
|         5 | garima       |                7 |
|         4 | garima sen   |                6 |
|         1 | richa sharma |                5 |
|         2 | richa sharma |                5 |
|         3 | richa sharma |                3 |
+-----------+--------------+------------------+
5 rows in set (0.042 sec)

30) List the Book No, Book Name, Issue_date and Return_Date for all
the books issued by Richa Sharma.
mysql> select b.book_no,book_name,issue_date,return_date from books b
inner join issue i on b.book_no=i.book_no
    -> inner join member m on i.member_id=m.member_id
    -> where member_name="richa sharma";
+---------+------------+------------+-------------+
| book_no | book_name  | issue_date | return_date |
+---------+------------+------------+-------------+
|     101 | let us c   | 0004-07-06 | 2031-12-06  |
|     104 | pl-sql-ref | 2015-01-06 | 2031-12-06  |
|     104 | pl-sql-ref | 2015-11-06 | 2019-07-06  |
+---------+------------+------------+-------------+
3 rows in set (0.052 sec)

31) List the details of all the members that have issued books in
Database category.
mysql> select *from member m inner join issue i on m.member_id=i.member_id
    -> inner join books b on b.book_no=i.book_no
    -> where category="database";
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+--------------+---------+------------+-------------+-----------+---------+------------+-------------+------+----------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount | lib_issue_id | book_no | issue_date | return_date | member_id | book_no | book_name  | author      | cost | category |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+--------------+---------+------------+-------------+-----------+---------+------------+-------------+------+----------+
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |           50.00 |         7003 |     104 | 2015-01-06 | 2031-12-06  |         1 |     104 | pl-sql-ref | scott urman |  750 | database |
|         3 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                3 |           60.00 |         7005 |     104 | 2015-11-06 | 2019-07-06  |         3 |     104 | pl-sql-ref | scott urman |  750 | database |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+--------------+---------+------------+-------------+-----------+---------+------------+-------------+------+----------+
2 rows in set (0.032 sec)

32) List all the books that have highest price in their own category.
mysql> select category,max(cost) from books group by category;
+----------+-----------+
| category | max(cost) |
+----------+-----------+
| system   |       450 |
| database |       750 |
+----------+-----------+
2 rows in set (0.047 sec)

33) List all the Issue_Details where Issue_date is not within the
Acc_open_date and Return_date for that member.
mysql> select issue_date from issue i inner join member m on i.member_id=i.member_id
    -> where issue_date not between Acc_Open_Date and return_date;
+------------+
| issue_date |
+------------+
| 0004-07-06 |
| 2018-02-06 |
| 2015-11-06 |
| 0004-07-06 |
| 2015-01-06 |
| 2018-02-06 |
| 2015-11-06 |
| 0004-07-06 |
| 2015-01-06 |
+------------+
9 rows in set (0.039 sec)

34) List all the members that have not issued a single book so far.
mysql> select issue_date from issue i inner join member m on i.member_
id=m.member_id
    -> where issue_date not between Acc_Open_Date and return_date;
+------------+
| issue_date |
+------------+
| 0004-07-06 |
| 2015-11-06 |
+------------+
2 rows in set (0.014 sec)

mysql> select *from member where member_id=(select member_id from issu
e where issue_date is null);
Empty set (0.482 sec)

35) List all the members that have issued the same book as issued by
Garima.
mysql> select *from member m inner join issue i on m.member_id=i.member_id where book_no in( select i2.book_no from issue i2 inner join memb
er m1 on i2.member_id=m1.member_id where m1.member_name like "garima%"
)
    -> and m.member_name not like "garima%";
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+--------------+---------+------------+-------------+-----------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount | lib_issue_id | book_no | issue_date | return_date | member_id |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+--------------+---------+------------+-------------+-----------+
|         2 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                5 |           50.00 |         7004 |     101 | 0004-07-06 | 2031-12-06  |         2 |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+--------------+---------+------------+-------------+-----------+
1 row in set (0.228 sec)

36) List the Book_Name, Price of all the books that are not returned
for more then 30 days.
mysql> select book_name,cost from books b inner join issue i on b.book
_no=i.book_no where datediff(curdate(),issue_date)>30 and (return_date
 is null or datediff(return_date,issue_date)>30);
+------------+------+
| book_name  | cost |
+------------+------+
| pl-sql-ref |  750 |
| let us c   |  450 |
| pl-sql-ref |  750 |
| let us c   |  450 |
+------------+------+
4 rows in set (0.130 sec)

37) List all the authors and book_name that has more then 1 book
written by them.
mysql> select author,book_name from books where author in(select autho
r from books group by author having count(*)>1);
+--------+---------------------+
| author | book_name           |
+--------+---------------------+
| loni   | oracle-complete ref |
| loni   | mastering sql       |
+--------+---------------------+
2 rows in set (0.096 sec)

38) List the Member ID, Member Name of the people that have issued
the highest and the lowest no of books.
mysql> (select i.member_id,member_name,count(book_no) from issue i inn
er join member m on i.member_id=m.member_id group by member_id order b
y  count(book_no) desc limit 1)
    -> union
    -> (select i.member_id,member_name,count(book_no) from issue i inner join member m on i.member_id=m.member_id group by member_id order by  count(book_no) limit 1);
+-----------+--------------+----------------+
| member_id | member_name  | count(book_no) |
+-----------+--------------+----------------+
|         1 | richa sharma |              1 |
+-----------+--------------+----------------+
1 row in set (0.082 sec)

39) List the details of highest 3 priced books.
mysql> select *from books order by cost desc limit 3;
+---------+---------------------+--------------+------+----------+
| book_no | book_name           | author       | cost | category |
+---------+---------------------+--------------+------+----------+
|     104 | pl-sql-ref          | scott urman  |  750 | database |
|     102 | oracle-complete ref | loni         |  550 | database |
|     101 | let us c            | denis ritche |  450 | system   |
+---------+---------------------+--------------+------+----------+
3 rows in set (0.016 sec)

40) List the total cost of all the books that are currently issued but not
returned.
mysql> select sum(cost) from books where book_no in(select book_no fro
m issue where return_date is null);
+-----------+
| sum(cost) |
+-----------+
|       450 |
+-----------+
1 row in set (0.051 sec)

41) List the details of the book that has been issued maximum no of
times.
mysql> select book_no from books group by book_no having count(book_no)=(select max(bookcount) from(select book_no,count(*) as bookcount from books group by book_no ) as subtable);
+---------+
| book_no |
+---------+
|     101 |
|     102 |
|     103 |
|     104 |
+---------+
4 rows in set (0.058 sec)

42) List how many books are issued to lifetime members.
mysql> select book_no from issue group by book_no having count(book_no)=(select max(bookcount) from(select book_no,count(*) as bookcount from issue group by book_no ) as subtable);
+---------+
| book_no |
+---------+
|     101 |
|     104 |
+---------+
2 rows in set (0.011 sec)

mysql> select count(*) from issue i inner join member m on i.member_id
=m.member_id where membership_type="lifetime";
+----------+
| count(*) |
+----------+
|        4 |
+----------+
1 row in set (0.304 sec)

43) List all member types and how many members are there in each
type.
mysql> select membership_type,count(*) from member group by membership
_type;
+-----------------+----------+
| membership_type | count(*) |
+-----------------+----------+
| Lifetime        |        5 |
+-----------------+----------+
1 row in set (0.044 sec)

44) List first 5 members who had joined library.
mysql> select *from member limit 5;
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |           50.00 |
|         2 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                5 |           50.00 |
|         3 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                3 |           60.00 |
|         4 | garima sen   | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |           40.00 |
|         5 | garima       | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |           60.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
5 rows in set (0.026 sec)

mysql> select *from issue i inner join member m on i.member_id=m.membe
r_id where issue_date between "1997-1-12" and "1997-31-12";
Empty set, 4 warnings (0.049 sec)

mysql> select *from issue i inner join member m on i.member_id=m.member_id where issue_date between "2015-1-12" and "2018-31-12";
Empty set, 4 warnings (0.013 sec)

mysql> select *from member m inner join issue i on i.member_id=m.membe
r_id where issue_date between "2015-1-12" and "2018-31-12";
Empty set, 4 warnings (0.010 sec)

45) List the members with their member type, who have issued books
during the period 1st December to 31st December.
mysql> select *from member m inner join issue i on i.member_id=m.member_id where issue_date between "2015-12-1" and "2018-12-31";
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+--------------+---------+------------+-------------+-----------+
| member_id | member_name | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount | lib_issue_id | book_no | issue_date | return_date | member_id |
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+--------------+---------+------------+-------------+-----------+
|         4 | garima sen  | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |           40.00 |         7006 |     101 | 2018-02-06 | NULL        |         4 |
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+--------------+---------+------------+-------------+-----------+
1 row in set (0.013 sec)

46) List all the members who have not returned books yet.
mysql> select *from member where member_id=(select member_id from issu
e where return_date is null);
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         4 | garima sen  | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |           40.00 |
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
1 row in set (0.029 sec)

47) List all the members who joined library on the same date Garima
joined.
mysql> select *from member where member_id not in(select member_id fro
m issue);
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         5 | garima      | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |           60.00 |
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
1 row in set (0.032 sec)



mysql> select *from member where Acc_Open_Date=(select Acc_Open_Date from member where member_name="garima");
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         5 | garima      | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |           60.00 |
+-----------+-------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
1 row in set (0.028 sec)

48) List all the members who has issued books from author “Loni” in

the month of December

mysql> select *from member m inner join issue i on m.member_id=i.member_id inner join books b on i.book_no=b.book_no
    -> where author="loni" and monthname(issue_date)="december";
Empty set (0.032 sec)

49) List names of the authors whose books are least issued by

lifetime members.
mysql> select b.author,count(*) as countbook from issue i inner join b
ooks b on b.book_no=i.book_no inner join member m on i.member_id=m.mem
ber_id
    -> where membership_type="lifetime"
    -> group by b.author
    -> having countbook=(select min(countbook) from(select b.author,count(*) as countbook from issue i1 inner join books b1 on b1.book_no=i1.book_no inner join member m1 on i1.member_id=m1.member_id  where membership_type="lifetime" group by b1.author) as subtable);
+--------------+-----------+
| author       | countbook |
+--------------+-----------+
| denis ritche |         2 |
| scott urman  |         2 |
+--------------+-----------+
2 rows in set (0.100 sec)

50) List the names of members who has issued the books whose cost
is more than 300 rupees and whose author is “Scott Urman”

mysql> select member_name from member m inner join issue i on m.member
_id =i.member_id inner join books b on b.book_no=i.book_no
    -> where cost>=300 and author="scott urman";
+--------------+
| member_name  |
+--------------+
| richa sharma |
| richa sharma |
+--------------+
2 rows in set (0.012 sec)

51) List all lifetime members who joined library during 1st January
2006 to 31st December 2006 but issued only one book.

mysql> select m.member_name,m.member_id,m.Acc_Open_Date,count(book_no) from member m inner join issue i on m.member_id=i.member_id where membership_type="lifetime"
    -> group by m.member_name,m.member_id,m.Acc_Open_Date
    -> having count(book_no)=1;
+--------------+-----------+---------------+----------------+
| member_name  | member_id | Acc_Open_Date | count(book_no) |
+--------------+-----------+---------------+----------------+
| richa sharma |         1 | 2010-12-05    |              1 |
| richa sharma |         2 | 2025-10-01    |              1 |
| richa sharma |         3 | 2025-10-01    |              1 |
| garima sen   |         4 | 0002-03-05    |              1 |
+--------------+-----------+---------------+----------------+
4 rows in set (0.057 sec)

52) Modify the Penalty_Amount for Garima Sen to Rs 100.
mysql> update member set penality_amount=100 where member_name="garima
 sen";
Query OK, 1 row affected (0.370 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from member;
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
| member_id | member_name  | member_address | Acc_Open_Date | membership_type | fees_paid | max_book_allowed | penality_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
|         1 | richa sharma | pune           | 2010-12-05    | Lifetime        |     25000 |                5 |           50.00 |
|         2 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                5 |           50.00 |
|         3 | richa sharma | pune           | 2025-10-01    | Lifetime        |     25000 |                3 |           60.00 |
|         4 | garima sen   | pune           | 0002-03-05    | Lifetime        |     25000 |                6 |          100.00 |
|         5 | garima       | pune           | 0002-12-05    | Lifetime        |     25000 |                7 |           60.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+------------------+-----------------+
5 rows in set (0.007 sec)
