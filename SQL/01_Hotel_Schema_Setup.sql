CREATE DATABASE hotel_db;
USE hotel_db;

CREATE TABLE users (
    user_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    phone_number VARCHAR(15),
    mail_id VARCHAR(100),
    billing_address VARCHAR(255)
);


CREATE TABLE bookings (
    booking_id VARCHAR(50) PRIMARY KEY,
    booking_date DATETIME,
    room_no VARCHAR(20),
    user_id VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);


CREATE TABLE items (
    item_id VARCHAR(50) PRIMARY KEY,
    item_name VARCHAR(100),
    item_rate DECIMAL(10,2)
);


CREATE TABLE booking_commercials (
    id VARCHAR(50) PRIMARY KEY,
    booking_id VARCHAR(50),
    bill_id VARCHAR(50),
    bill_date DATETIME,
    item_id VARCHAR(50),
    item_quantity DECIMAL(10,2),
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);


INSERT INTO users VALUES
('usr001','Rahul','9876543210','rahul@gmail.com','Hyderabad'),
('usr002','Amit','9123456780','amit@gmail.com','Delhi'),
('usr003','Sneha','9988776655','sneha@gmail.com','Mumbai'),
('usr004','Priya','9090909090','priya@gmail.com','Chennai'),
('usr005','Arjun','9012345678','arjun@gmail.com','Bangalore'),
('usr006','Kiran','9871234560','kiran@gmail.com','Pune'),
('usr007','Ravi','9123987654','ravi@gmail.com','Kolkata'),
('usr008','Meena','9001122334','meena@gmail.com','Jaipur'),
('usr009','Vikram','9887766554','vikram@gmail.com','Lucknow'),
('usr010','Anjali','9776655443','anjali@gmail.com','Indore'),
('usr011','Teja','9665544332','teja@gmail.com','Vizag'),
('usr012','Nikhil','9554433221','nikhil@gmail.com','Nagpur'),
('usr013','Divya','9443322110','divya@gmail.com','Surat'),
('usr014','Manoj','9332211009','manoj@gmail.com','Patna'),
('usr015','Kavya','9221100998','kavya@gmail.com','Bhopal');


INSERT INTO items VALUES
('itm001','Tawa Paratha',20),
('itm002','Paneer Curry',120),
('itm003','Veg Biryani',150),
('itm004','Chicken Curry',180),
('itm005','Dal Fry',90),
('itm006','Fried Rice',130),
('itm007','Ice Cream',60),
('itm008','Coffee',40),
('itm009','Tea',20),
('itm010','Noodles',110);


INSERT INTO bookings VALUES
('bk001','2021-01-10 10:00:00','rm101','usr001'),
('bk002','2021-02-12 12:00:00','rm102','usr002'),
('bk003','2021-03-15 09:30:00','rm103','usr003'),
('bk004','2021-04-18 14:00:00','rm104','usr004'),
('bk005','2021-05-20 16:00:00','rm105','usr005'),
('bk006','2021-06-22 18:00:00','rm106','usr006'),
('bk007','2021-07-25 11:00:00','rm107','usr007'),
('bk008','2021-08-28 13:00:00','rm108','usr008'),
('bk009','2021-09-05 15:00:00','rm109','usr009'),
('bk010','2021-10-10 17:00:00','rm110','usr010'),
('bk011','2021-11-12 10:30:00','rm111','usr011'),
('bk012','2021-11-15 12:30:00','rm112','usr012'),
('bk013','2021-11-18 14:30:00','rm113','usr013'),
('bk014','2021-10-20 16:30:00','rm114','usr014'),
('bk015','2021-09-25 18:30:00','rm115','usr015'),
('bk016','2021-08-10 09:00:00','rm116','usr001'),
('bk017','2021-07-12 11:00:00','rm117','usr002'),
('bk018','2021-06-14 13:00:00','rm118','usr003'),
('bk019','2021-05-16 15:00:00','rm119','usr004'),
('bk020','2021-04-18 17:00:00','rm120','usr005'),
('bk021','2021-03-20 19:00:00','rm121','usr006'),
('bk022','2021-02-22 08:00:00','rm122','usr007'),
('bk023','2021-01-24 10:00:00','rm123','usr008'),
('bk024','2021-10-26 12:00:00','rm124','usr009'),
('bk025','2021-11-28 14:00:00','rm125','usr010');


INSERT INTO booking_commercials VALUES
('bc001','bk010','bill001','2021-10-10','itm001',5),
('bc002','bk010','bill001','2021-10-10','itm002',3),
('bc021','bk010','bill100','2021-10-15','itm004',5),  
('bc022','bk010','bill100','2021-10-15','itm002',3),
('bc003','bk011','bill002','2021-11-12','itm003',2),
('bc004','bk011','bill002','2021-11-12','itm004',1),
('bc005','bk012','bill003','2021-11-15','itm005',4),
('bc006','bk012','bill003','2021-11-15','itm006',2),
('bc007','bk013','bill004','2021-11-18','itm007',3),
('bc008','bk013','bill004','2021-11-18','itm008',5),
('bc009','bk014','bill005','2021-10-20','itm009',6),
('bc010','bk014','bill005','2021-10-20','itm010',2),
('bc011','bk015','bill006','2021-09-25','itm001',2),
('bc012','bk016','bill007','2021-08-10','itm002',3),
('bc013','bk017','bill008','2021-07-12','itm003',1),
('bc014','bk018','bill009','2021-06-14','itm004',2),
('bc015','bk019','bill010','2021-05-16','itm005',3),
('bc016','bk020','bill011','2021-04-18','itm006',2),
('bc017','bk021','bill012','2021-03-20','itm007',4),
('bc018','bk022','bill013','2021-02-22','itm008',2),
('bc019','bk023','bill014','2021-01-24','itm009',5),
('bc020','bk024','bill015','2021-10-26','itm010',3);