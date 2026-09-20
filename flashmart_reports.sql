mysql> SELECT * FROM Student WHERE StudentName LIKE 'h%';
+-----------+-------------+-----------+------------+----------------+---------+
| StudentId | StudentName | Address   | Phone      | Status         | ClassId |
+-----------+-------------+-----------+------------+----------------+---------+
|         1 | Hung        | Ha Noi    | 0912113113 | 0x01           |       1 |
|         2 | Hoa         | Hai phong | NULL       | 0x01           |       1 |
+-----------+-------------+-----------+------------+----------------+---------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM Class WHERE MONTH(StartDate) = 12;
+---------+-----------+---------------------+----------------+
| ClassID | ClassName | StartDate           | Status         |
+---------+-----------+---------------------+----------------+
|       1 | A1        | 2008-12-20 00:00:00 | 0x01           |
|       2 | A2        | 2008-12-22 00:00:00 | 0x01           |
+---------+-----------+---------------------+----------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM Subject WHERE Credit BETWEEN 3 AND 5;
+-------+---------+--------+----------------+
| SubId | SubName | Credit | Status         |
+-------+---------+--------+----------------+
|     1 | CF      |      5 | 0x01           |
|     3 | HDJ     |      5 | 0x01           |
+-------+---------+--------+----------------+
2 rows in set (0.00 sec)

mysql> UPDATE Student SET ClassID = 2 WHERE StudentName = 'Hung';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0
mysql> SELECT S.StudentName, Sub.SubName, M.Mark
    -> FROM Student S
    -> JOIN Mark M ON S.StudentId = M.StudentId
    -> JOIN Subject Sub ON M.SubId = Sub.SubId
    -> ORDER BY M.Mark DESC, S.StudentName ASC;
+-------------+---------+------+
| StudentName | SubName | Mark |
+-------------+---------+------+
| Hung        | C       |   12 |
| Hoa         | CF      |   10 |
| Hung        | CF      |    8 |
+-------------+---------+------+
3 rows in set (0.00 sec)