CREATE DATABASE SOG1_P1;

CREATE TABLE Publications(
	ID INT not null,
	TotalEdits INT,
	EditTime INT,
	Date DATE
);

CREATE TABLE Employees(
	ID  INT PRIMARY KEY,
	Name NVARCHAR(100),
	Supervisor NVARCHAR(100),
	HireDate DATE
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