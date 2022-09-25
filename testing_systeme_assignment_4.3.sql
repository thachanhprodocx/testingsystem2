use testingsystem4;

-- Question 3: Viết lệnh để lấy ra danh sách nhân viên (name) có skill Java Hướng dẫn: sử dụng UNION


SELECT 
    *
FROM
    Employee_Table et
        JOIN
    Employee_Skill_Table est ON et.Employee_Number = est.Employee_Number
WHERE
    Skill_Code LIKE 'java';
-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >=3 nhân viên

SELECT Department_Name
FROM department d
JOIN Employee_Table et on d.Department_Number =et.Department_Number
GROUP BY d.Department_Name
HAVING COUNT(et.Department_Number)>=3;




-- Viết lệnh để lấy ra danh sách nhân viên của mỗi văn phòng ban.
SELECT et.Employee_Name,d.Department_Name,COUNT(et.Employee_Name)
FROM Employee_Table et 
RIGHT JOIN department d on et.Department_Number=d.Department_Number
GROUP BY d.Department_Number;

-- 6: Viết lệnh để lấy ra danh sách nhân viên có > 1 skills.
SELECT  DISTINCT est.Skill_Code,Employee_Name
FROM employee_table et
LEFT JOIN  employee_skill_table est
on et.Employee_Number=est.Employee_Number





