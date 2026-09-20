mysql> CREATE DATABASE IF NOT EXISTS QuanLyBanHang;
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> USE QuanLyBanHang;
Database changed
mysql>
mysql> -- Xóa các bảng cũ nếu tồn tại (để chạy lại script không bị lỗi)
mysql> DROP TABLE IF EXISTS OrderDetail;
Query OK, 0 rows affected (0.01 sec)

mysql> DROP TABLE IF EXISTS `Order`;
Query OK, 0 rows affected (0.02 sec)

mysql> DROP TABLE IF EXISTS Product;
Query OK, 0 rows affected (0.01 sec)

mysql> DROP TABLE IF EXISTS Customer;
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> -- 2. Tạo bảng Customer
mysql> CREATE TABLE Customer (
    ->     cID INT AUTO_INCREMENT PRIMARY KEY,
    ->     cName VARCHAR(50) NOT NULL,
    ->     cAge TINYINT
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> -- 3. Tạo bảng Product
mysql> CREATE TABLE Product (
    ->     pID INT AUTO_INCREMENT PRIMARY KEY,
    ->     pName VARCHAR(50) NOT NULL,
    ->     pPrice INT CHECK (pPrice >= 0)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> -- 4. Tạo bảng Order
mysql> CREATE TABLE `Order` (
    ->     oID INT AUTO_INCREMENT PRIMARY KEY,
    ->     cID INT NOT NULL,
    ->     oDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    ->     oTotalPrice INT,
    ->     FOREIGN KEY (cID) REFERENCES Customer(cID)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> -- 5. Tạo bảng OrderDetail
mysql> CREATE TABLE OrderDetail (
    ->     oID INT NOT NULL,
    ->     pID INT NOT NULL,
    ->     odQTY INT CHECK (odQTY > 0),
    ->     PRIMARY KEY (oID, pID),
    ->     FOREIGN KEY (oID) REFERENCES `Order`(oID),
    ->     FOREIGN KEY (pID) REFERENCES Product(pID)
    -> );
Query OK, 0 rows affected (0.03 sec)