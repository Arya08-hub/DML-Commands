CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age > 0),
    Last_update DATE NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
    );
    
INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Last_update, Gender, Department, Salary)
VALUES
(1, 'John', 'Doe', '1980-05-15', 44, '2024-12-05', 'M', 'IT', 30000),
(2, 'Aaliya', 'Khan', '1990-07-10', 34, '2024-12-05', 'F', 'HR', 25000),
(3, 'Michael', 'Smith', '1985-03-20', 39, '2024-12-05', 'M', 'Finance', 32000),
(4, 'Emma', 'Brown', '1992-09-18', 32, '2024-12-05', 'F', 'IT', 27000),
(5, 'David', 'Wilson', '1988-12-25', 36, '2024-12-05', 'M', 'Marketing', 28000),
(6, 'Sophia', 'Taylor', '1995-11-03', 29, '2024-12-05', 'F', 'HR', 20000),
(7, 'James', 'White', '1983-08-12', 41, '2024-12-05', 'M', 'IT', 40000),
(8, 'Aby', 'Johnson', '1997-02-14', 27, '2024-12-05', 'F', 'Finance', 23000),
(9, 'Liya', 'Martinez', '1986-06-30', 38, '2024-12-05', 'M', 'Operations', 30000),
(10, 'Miya', 'Davis', '1994-01-25', 30, '2024-12-05', 'F', 'IT', 18000);


---

SELECT First_name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;


---

SELECT Manager_Id, First_name, Last_Name, (Salary * 12) AS Annual_Income
FROM Managers;


---


SELECT 
    *
FROM
    Managers
WHERE
    First_name != 'Aaliya';


---


SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;


---

SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;