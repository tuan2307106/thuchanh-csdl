 USE QuanLySinhVien;
Database changed
mysql> SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
    -> FROM Student
    -> GROUP BY Address;
+-----------+-------------------+
| Address   | S? l??ng h?c viên |
+-----------+-------------------+
| Ha Noi    |                 1 |
| Hai phong |                 1 |
| HCM       |                 1 |
+-----------+-------------------+
3 rows in set (0.00 sec)

mysql> SELECT S.StudentId,S.StudentName, AVG(Mark)
    -> FROM Student S join Mark M on S.StudentId = M.StudentId
    -> GROUP BY S.StudentId, S.StudentName;
+-----------+-------------+-----------+
| StudentId | StudentName | AVG(Mark) |
+-----------+-------------+-----------+
|         1 | Hung        |        10 |
|         2 | Hoa         |        10 |
+-----------+-------------+-----------+
2 rows in set (0.00 sec)

mysql> SELECT S.StudentId,S.StudentName, AVG(Mark)
    -> FROM Student S join Mark M on S.StudentId = M.StudentId
    -> GROUP BY S.StudentId, S.StudentName
    ->
mysql> SELECT S.StudentId,S.StudentName, AVG(Mark)
    -> FROM Student S join Mark M on S.StudentId = M.StudentId
    -> GROUP BY S.StudentId, S.StudentName
    -> HAVING AVG(Mark) > 15;
Empty set (0.00 sec)

mysql> SELECT S.StudentId, S.StudentName, AVG(Mark)
    -> FROM Student S join Mark M on S.StudentId = M.StudentId
    -> GROUP BY S.StudentId, S.StudentName;
+-----------+-------------+-----------+
| StudentId | StudentName | AVG(Mark) |
+-----------+-------------+-----------+
|         1 | Hung        |        10 |
|         2 | Hoa         |        10 |
+-----------+-------------+-----------+
2 rows in set (0.00 sec)

mysql> SELECT S.StudentId, S.StudentName, AVG(Mark)
    -> FROM Student S join Mark M on S.StudentId = M.StudentId
    -> GROUP BY S.StudentId, S.StudentName
    -> HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);
+-----------+-------------+-----------+
| StudentId | StudentName | AVG(Mark) |
+-----------+-------------+-----------+
|         1 | Hung        |        10 |
|         2 | Hoa         |        10 |
+-----------+-------------+-----------+
2 rows in set (0.00 sec)
