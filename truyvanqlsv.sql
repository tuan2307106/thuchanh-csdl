mysql> USE QuanLySinhVien;
Database changed
mysql> SELECT *
    -> FROM Student;
+-----------+-------------+-----------+------------+----------------+---------+
| StudentId | StudentName | Address   | Phone      | Status         | ClassId |
+-----------+-------------+-----------+------------+----------------+---------+
|         1 | Hung        | Ha Noi    | 0912113113 | 0x01           |       1 |
|         2 | Hoa         | Hai phong | NULL       | 0x01           |       1 |
|         3 | Manh        | HCM       | 0123123123 | 0x00           |       2 |
+-----------+-------------+-----------+------------+----------------+---------+
3 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM Student
    -> WHERE Status = true;
+-----------+-------------+-----------+------------+----------------+---------+
| StudentId | StudentName | Address   | Phone      | Status         | ClassId |
+-----------+-------------+-----------+------------+----------------+---------+
|         1 | Hung        | Ha Noi    | 0912113113 | 0x01           |       1 |
|         2 | Hoa         | Hai phong | NULL       | 0x01           |       1 |
+-----------+-------------+-----------+------------+----------------+---------+
2 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM Subject
    -> WHERE Credit < 10;
+-------+---------+--------+----------------+
| SubId | SubName | Credit | Status         |
+-------+---------+--------+----------------+
|     1 | CF      |      5 | 0x01           |
|     2 | C       |      6 | 0x01           |
|     3 | HDJ     |      5 | 0x01           |
+-------+---------+--------+----------------+
3 rows in set (0.00 sec)

mysql> SELECT S.StudentId, S.StudentName, C.ClassName
    -> FROM Student S join Class C on S.ClassId = C.ClassID;
+-----------+-------------+-----------+
| StudentId | StudentName | ClassName |
+-----------+-------------+-----------+
|         1 | Hung        | A1        |
|         2 | Hoa         | A1        |
|         3 | Manh        | A2        |
+-----------+-------------+-----------+
3 rows in set (0.00 sec)

mysql> SELECT S.StudentId, S.StudentName, C.ClassName
    -> FROM Student S join Class C on S.ClassId = C.ClassID
    -> WHERE C.ClassName = 'A1';
+-----------+-------------+-----------+
| StudentId | StudentName | ClassName |
+-----------+-------------+-----------+
|         1 | Hung        | A1        |
|         2 | Hoa         | A1        |
+-----------+-------------+-----------+
2 rows in set (0.00 sec)

mysql> SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
    -> FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
mysql> SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
    -> FROM Student S
    -> JOIN Mark M ON S.StudentId = M.StudentId
    -> JOIN Subject Sub ON M.SubId = Sub.SubId
    -> WHERE Sub.SubName = 'CF';
+-----------+-------------+---------+------+
| StudentId | StudentName | SubName | Mark |
+-----------+-------------+---------+------+
|         1 | Hung        | CF      |    8 |
|         2 | Hoa         | CF      |   10 |
+-----------+-------------+---------+------+
2 rows in set (0.00 sec)