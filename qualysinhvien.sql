 USE QuanLySinhVien;
Database changed
mysql> INSERT INTO Class
    -> VALUES (1, 'A1', '2008-12-20', 1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Class
    -> VALUES (2, 'A2', '2008-12-22', 1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Class
    -> VALUES (3, 'B3', current_date, 0);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
    -> VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Student (StudentName, Address, Status, ClassId)
    -> VALUES ('Hoa', 'Hai phong', 1, 1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
    -> VALUES ('Manh', 'HCM', '0123123123', 0, 2);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Subject
    -> VALUES (1, 'CF', 5, 1),
    ->  (2, 'C', 6, 1),
    ->  (3, 'HDJ', 5, 1),
    ->  (4, 'RDBMS', 10, 1);
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
    -> VALUES (1, 1, 8, 1),
    ->  (1, 2, 10, 2),
    ->  (2, 1, 12, 1);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0