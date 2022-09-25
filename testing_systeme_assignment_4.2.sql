DROP DATABASE IF EXISTS testingsystem4;
CREATE DATABASE testingsystem4;
USE testingsystem4;
DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
    Department_Number INT AUTO_INCREMENT PRIMARY KEY,
    Department_Name VARCHAR(50) NOT NULL UNIQUE
);
DROP TABLE IF EXISTS Employee_Table;
CREATE TABLE Employee_Table (
    Employee_Number INT AUTO_INCREMENT PRIMARY KEY,
    Employee_Name VARCHAR(50) NOT NULL,
    Department_Number INT NOT NULL,
    FOREIGN KEY (Department_Number)
        REFERENCES Department (Department_Number)
);
DROP TABLE IF EXISTS Employee_Skill_Table;
CREATE TABLE Employee_Skill_Table (
    Employee_Number INT NOT NULL,
    Skill_Code VARCHAR(50),
    Date_Registered DATE,
    FOREIGN KEY (Employee_Number)
        REFERENCES Employee_Table (Employee_Number)
);
INSERT INTO Department (Department_Name)
VALUES 					( 	'bán hàng' ),
						(	'kinh doanh'),
                        (	'sale'),
                        (	'giám đốc'),
                        (	'phó giám đốc'),
                        (	'kế toán'),
                        (	'makesting'),
                        (	'nhân sự'),
                        (	'đào tạo nhân sự'),
                        (	'quản lý nhân sự');
INSERT INTO Employee_Table (Employee_Name,Department_Number)
VALUES 						('nguyễn phương thảo ','1'),
							('hoàng quốc việt','4'),
                            ('ngô thạch anh','3'),
                            ('nguyễn du','2'),
                            ('thạch phá thiên','5'),
                            ('hoàng thị khuyên','6'),
                            ('đào bá lộc','7'),
                            ('cao bá quát','9'),
                            ('đường tăng','8'),
                            ('tôn ngộ không','10');
INSERT INTO Employee_Skill_Table(Employee_Number,Skill_Code,Date_Registered)
VALUES 						('5','java','1997-02-01'),
							('4','Python','1995-01-21'),
                            ('3','Ruby ','2001-03-15'),
                            ('1','Pascal','1999-04-13'),
                            ('2','C','1998-12-01'),
                            ('9','C#','2001-07-05'),
                            ('8','C++','2002-11-08'),
                            ('7','Objective-C','2004-01-01'),
                            ('6','JavaScript','2001-03-19'),
                            ('10','Swift','2003-12-12');
                            