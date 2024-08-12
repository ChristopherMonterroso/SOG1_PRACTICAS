CREATE DATABASE SOG1_P1;

CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Supervisor NVARCHAR(100),
    HireDate DATE
);

CREATE TABLE Publications (
    PublicationID INT PRIMARY KEY, 
    EmployeeID INT,  
    TotalEdits INT,
    EditTime INT,
    Date DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(ID)  -- Referencia al empleado en Employees
);


Bulk insert Employees
from 'C:\Users\Christopher\Documents_\USAC\9no Semestre\Gerenciales 1\Laboratorio\Practica 1\Employees.csv'
with 
(
	fieldterminator = ';',
	ROWTERMINATOR =  '\n',
	FIRSTROW = 2
);

Bulk insert Publications
from 'C:\Users\Christopher\Documents_\USAC\9no Semestre\Gerenciales 1\Laboratorio\Practica 1\Publications.csv'
with 
(
	fieldterminator = ';',
	ROWTERMINATOR =  '\n',
	FIRSTROW = 2
);