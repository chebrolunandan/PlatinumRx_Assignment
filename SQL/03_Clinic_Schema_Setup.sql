CREATE DATABASE clinic_db;
USE clinic_db;

-- CLINICS
CREATE TABLE clinics (
    cid VARCHAR(50) PRIMARY KEY,
    clinic_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);

-- CUSTOMER
CREATE TABLE customer (
    uid VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    mobile VARCHAR(15)
);

-- CLINIC SALES
CREATE TABLE clinic_sales (
    oid VARCHAR(50) PRIMARY KEY,
    uid VARCHAR(50),
    cid VARCHAR(50),
    amount DECIMAL(10,2),
    datetime DATETIME,
    sales_channel VARCHAR(50),
    FOREIGN KEY (uid) REFERENCES customer(uid),
    FOREIGN KEY (cid) REFERENCES clinics(cid)
);

-- EXPENSES
CREATE TABLE expenses (
    eid VARCHAR(50) PRIMARY KEY,
    cid VARCHAR(50),
    description VARCHAR(255),
    amount DECIMAL(10,2),
    datetime DATETIME,
    FOREIGN KEY (cid) REFERENCES clinics(cid)
);


INSERT INTO clinics VALUES
('cnc-0100001','Apollo Clinic','Hyderabad','Telangana','India'),
('cnc-0100002','Care Clinic','Bangalore','Karnataka','India'),
('cnc-0100003','City Health','Chennai','Tamil Nadu','India'),
('cnc-0100004','Wellness Center','Mumbai','Maharashtra','India'),
('cnc-0100005','MediCare','Delhi','Delhi','India'),

('cnc-0100006','LifeLine','Pune','Maharashtra','India'),
('cnc-0100007','Sunrise Clinic','Kolkata','West Bengal','India'),
('cnc-0100008','Healing Touch','Jaipur','Rajasthan','India'),
('cnc-0100009','Green Cross','Lucknow','UP','India'),
('cnc-0100010','Nova Clinic','Vizag','AP','India'),

('cnc-0100011','Pulse Clinic','Indore','MP','India'),
('cnc-0100012','Hope Clinic','Surat','Gujarat','India'),
('cnc-0100013','Prime Health','Nagpur','Maharashtra','India'),
('cnc-0100014','Care Plus','Patna','Bihar','India'),
('cnc-0100015','WellCare','Bhopal','MP','India'),

('cnc-0100016','CityCare','Chandigarh','Punjab','India'),
('cnc-0100017','Health First','Noida','UP','India'),
('cnc-0100018','MediPlus','Gurgaon','Haryana','India'),
('cnc-0100019','LifeCare','Coimbatore','Tamil Nadu','India'),
('cnc-0100020','Smart Clinic','Mysore','Karnataka','India');

INSERT INTO customer VALUES
('uid-1001','Rahul','9876543210'),
('uid-1002','Amit','9123456780'),
('uid-1003','Sneha','9988776655'),
('uid-1004','Priya','9090909090'),
('uid-1005','Arjun','9012345678'),

('uid-1006','Kiran','9871234560'),
('uid-1007','Ravi','9123987654'),
('uid-1008','Meena','9001122334'),
('uid-1009','Vikram','9887766554'),
('uid-1010','Anjali','9776655443'),

('uid-1011','Teja','9665544332'),
('uid-1012','Nikhil','9554433221'),
('uid-1013','Divya','9443322110'),
('uid-1014','Manoj','9332211009'),
('uid-1015','Kavya','9221100998'),

('uid-1016','Suresh','9111111111'),
('uid-1017','Mahesh','9222222222'),
('uid-1018','Ramesh','9333333333'),
('uid-1019','Lokesh','9444444444'),
('uid-1020','Ganesh','9555555555'),

('uid-1021','Harsha','9666666666'),
('uid-1022','Tarun','9777777777'),
('uid-1023','Varun','9888888888'),
('uid-1024','Ajay','9999999999'),
('uid-1025','Deepak','9000000001'),

('uid-1026','Rohit','9000000002'),
('uid-1027','Karthik','9000000003'),
('uid-1028','Vamsi','9000000004'),
('uid-1029','Sanjay','9000000005'),
('uid-1030','Abhi','9000000006'),

('uid-1031','Pooja','9000000007'),
('uid-1032','Neha','9000000008'),
('uid-1033','Swathi','9000000009'),
('uid-1034','Keerthi','9000000010'),
('uid-1035','Lavanya','9000000011'),

('uid-1036','Ritu','9000000012'),
('uid-1037','Nisha','9000000013'),
('uid-1038','Asha','9000000014'),
('uid-1039','Geetha','9000000015'),
('uid-1040','Sita','9000000016');


INSERT INTO clinic_sales VALUES
('ord-001','uid-1001','cnc-0100001',1500,'2021-01-10 10:00:00','walk-in'),
('ord-002','uid-1002','cnc-0100002',2200,'2021-02-12 11:00:00','online'),
('ord-003','uid-1003','cnc-0100003',1800,'2021-03-15 12:00:00','insurance'),
('ord-004','uid-1004','cnc-0100004',2500,'2021-04-18 13:00:00','walk-in'),
('ord-005','uid-1005','cnc-0100005',3000,'2021-05-20 14:00:00','referral'),

('ord-006','uid-1006','cnc-0100006',1200,'2021-06-22 15:00:00','online'),
('ord-007','uid-1007','cnc-0100007',2700,'2021-07-25 16:00:00','insurance'),
('ord-008','uid-1008','cnc-0100008',2100,'2021-08-28 17:00:00','walk-in'),
('ord-009','uid-1009','cnc-0100009',1900,'2021-09-05 18:00:00','online'),
('ord-010','uid-1010','cnc-0100010',3500,'2021-10-10 19:00:00','referral'),

('ord-011','uid-1001','cnc-0100001',2800,'2021-11-12 10:00:00','online'),
('ord-012','uid-1002','cnc-0100002',3200,'2021-11-15 11:00:00','insurance'),
('ord-013','uid-1003','cnc-0100003',2600,'2021-11-18 12:00:00','walk-in'),
('ord-014','uid-1004','cnc-0100004',2900,'2021-10-20 13:00:00','referral'),
('ord-015','uid-1005','cnc-0100005',3100,'2021-09-25 14:00:00','online'),

('ord-016','uid-1006','cnc-0100006',1700,'2021-08-10 10:00:00','walk-in'),
('ord-017','uid-1007','cnc-0100007',2400,'2021-07-12 11:00:00','online'),
('ord-018','uid-1008','cnc-0100008',2000,'2021-06-14 12:00:00','insurance'),
('ord-019','uid-1009','cnc-0100009',2600,'2021-05-16 13:00:00','walk-in'),
('ord-020','uid-1010','cnc-0100010',3300,'2021-04-18 14:00:00','referral'),

('ord-021','uid-1011','cnc-0100001',2100,'2021-03-20 15:00:00','online'),
('ord-022','uid-1012','cnc-0100002',2300,'2021-02-22 16:00:00','insurance'),
('ord-023','uid-1013','cnc-0100003',1800,'2021-01-24 17:00:00','walk-in'),
('ord-024','uid-1014','cnc-0100004',2700,'2021-10-26 18:00:00','online'),
('ord-025','uid-1015','cnc-0100005',3500,'2021-11-28 19:00:00','referral'),

('ord-026','uid-1016','cnc-0100011',2100,'2021-01-05','online'),
('ord-027','uid-1017','cnc-0100012',1800,'2021-02-07','walk-in'),
('ord-028','uid-1018','cnc-0100013',2400,'2021-03-09','insurance'),
('ord-029','uid-1019','cnc-0100014',3000,'2021-04-11','referral'),
('ord-030','uid-1020','cnc-0100015',1500,'2021-05-13','online'),

('ord-031','uid-1021','cnc-0100016',2200,'2021-06-15','walk-in'),
('ord-032','uid-1022','cnc-0100017',2600,'2021-07-17','insurance'),
('ord-033','uid-1023','cnc-0100018',3100,'2021-08-19','referral'),
('ord-034','uid-1024','cnc-0100019',2000,'2021-09-21','online'),
('ord-035','uid-1025','cnc-0100020',2700,'2021-10-23','walk-in'),

('ord-036','uid-1026','cnc-0100001',2900,'2021-11-01','insurance'),
('ord-037','uid-1027','cnc-0100002',3200,'2021-11-03','online'),
('ord-038','uid-1028','cnc-0100003',2100,'2021-11-05','walk-in'),
('ord-039','uid-1029','cnc-0100004',2800,'2021-11-07','referral'),
('ord-040','uid-1030','cnc-0100005',3500,'2021-11-09','online');

INSERT INTO expenses VALUES
('exp-001','cnc-0100001','Medicines',800,'2021-01-10'),
('exp-002','cnc-0100002','Equipment',1200,'2021-02-12'),
('exp-003','cnc-0100003','Staff Salary',2000,'2021-03-15'),
('exp-004','cnc-0100004','Maintenance',1500,'2021-04-18'),
('exp-005','cnc-0100005','Supplies',1000,'2021-05-20'),

('exp-006','cnc-0100006','Medicines',900,'2021-06-22'),
('exp-007','cnc-0100007','Equipment',1800,'2021-07-25'),
('exp-008','cnc-0100008','Staff Salary',1600,'2021-08-28'),
('exp-009','cnc-0100009','Maintenance',1400,'2021-09-05'),
('exp-010','cnc-0100010','Supplies',2000,'2021-10-10'),

('exp-011','cnc-0100001','Medicines',1500,'2021-11-12'),
('exp-012','cnc-0100002','Equipment',1700,'2021-11-15'),
('exp-013','cnc-0100003','Staff Salary',2200,'2021-11-18'),
('exp-014','cnc-0100004','Maintenance',1800,'2021-10-20'),
('exp-015','cnc-0100005','Supplies',1600,'2021-09-25'),

('exp-016','cnc-0100006','Medicines',1100,'2021-08-10'),
('exp-017','cnc-0100007','Equipment',2000,'2021-07-12'),
('exp-018','cnc-0100008','Staff Salary',1700,'2021-06-14'),
('exp-019','cnc-0100009','Maintenance',1500,'2021-05-16'),
('exp-020','cnc-0100010','Supplies',2200,'2021-04-18'),

('exp-021','cnc-0100011','Medicines',900,'2021-01-05'),
('exp-022','cnc-0100012','Equipment',1200,'2021-02-07'),
('exp-023','cnc-0100013','Salary',1800,'2021-03-09'),
('exp-024','cnc-0100014','Maintenance',1600,'2021-04-11'),
('exp-025','cnc-0100015','Supplies',1100,'2021-05-13'),

('exp-026','cnc-0100016','Medicines',1000,'2021-06-15'),
('exp-027','cnc-0100017','Equipment',1500,'2021-07-17'),
('exp-028','cnc-0100018','Salary',2000,'2021-08-19'),
('exp-029','cnc-0100019','Maintenance',1700,'2021-09-21'),
('exp-030','cnc-0100020','Supplies',1400,'2021-10-23'),

('exp-031','cnc-0100001','Medicines',1800,'2021-11-01'),
('exp-032','cnc-0100002','Equipment',2000,'2021-11-03'),
('exp-033','cnc-0100003','Salary',2200,'2021-11-05'),
('exp-034','cnc-0100004','Maintenance',1900,'2021-11-07'),
('exp-035','cnc-0100005','Supplies',1700,'2021-11-09');