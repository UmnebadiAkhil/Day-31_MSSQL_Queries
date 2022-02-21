
  --UC 1 Created database
  Create Database Employee_PayRoll_Service
  Use Employee_PayRoll_Service
  select * from Employee_PayRoll_Service

  --UC 2 Created Table
  Create table Employee_PayRoll_Service
  (
   Id int identity(100,1),
   Name varchar(150) NOT NULL,
   Salary INT NOT NULL,
   Start DATE NOT NULL,
   PRIMARY KEY (Id)
  )
  DROP TABLE Employee_PayRoll_Service

 --UC 3  Inserted data
 INSERT INTO Employee_PayRoll_Service(Name,Salary,Start) values
 ('Bill', 150000, '2018-01-03'),
 ('Terisa', 200000, '2019-11-13'),
 ('Charlie', 500000, '2020-05-21')

  --UC 4 Ability to retrieve all the employee payroll data that is added to payroll service database
 SELECT * FROM Employee_PayRoll_Service

  --UC 5 To find Data By parmeter & change by CAST
  SELECT Salary FROM Employee_PayRoll_Service WHERE Name='Bill'
  SELECT * FROM Employee_PayRoll_Service
		WHERE Start BETWEEN CAST('2018-01-01' AS DATE) AND GETDATE()

 
  --UC 6 Adding Feild Gender & name

  Alter table Employee_PayRoll_Service add gender char(1);
  UPDATE Employee_PayRoll_Service SET gender = 'F' WHERE name='Terisa';
  UPDATE Employee_PayRoll_Service SET gender = 'M' WHERE name='Bill';
  UPDATE Employee_PayRoll_Service SET gender = 'M' WHERE name='Charlie';

  select * from Employee_PayRoll_Service 



  --UC 7 To Find Sum,Avg,Min,Max & Count By gender wise

  SELECT SUM(Salary) as MaleSalarySum From Employee_PayRoll_Service where gender = 'M' GROUP BY gender;
  SELECT SUM(Salary) as FemaleSalarySum From Employee_PayRoll_Service where gender = 'F' GROUP BY gender;
  
  SELECT AVG(Salary) as MaleSalarySum From Employee_PayRoll_Service where gender = 'M' GROUP BY gender;
  SELECT AVG(Salary) as FemaleSalarySum From Employee_PayRoll_Service where gender = 'F' GROUP BY gender;

  SELECT MIN(Salary) as MaleSalarySum From Employee_PayRoll_Service where gender = 'M' GROUP BY gender;
  SELECT MIN(Salary) as FemaleSalarySum From Employee_PayRoll_Service where gender = 'F' GROUP BY gender;
  
  SELECT MAX(Salary) as MaleSalarySum From Employee_PayRoll_Service where gender = 'M' GROUP BY gender;
  SELECT MAX(Salary) as FemaleSalarySum From Employee_PayRoll_Service where gender = 'F' GROUP BY gender;

  SELECT COUNT(Salary) as MaleCOUNT From Employee_PayRoll_Service where gender = 'M' GROUP BY gender;
  SELECT COUNT(Salary) as FemaleCOUNT From Employee_PayRoll_Service where gender = 'F' GROUP BY gender;

  select * from Employee_PayRoll_Service
  

  --UC 8 TO Add ColumnS & Set Respective Data
  Alter table Employee_PayRoll_Service add 
  PhoneNo int,
  OfficeAddress varchar(50) not null default 'Pune',
  Department varchar(50) Not null default 'Administrative';

  
  UPDATE Employee_PayRoll_Service SET officeAddress = 'Mumbai' WHERE Name='Bill';

  
  --UC 9 Added Columns
  select * from Employee_PayRoll_Service

  Alter table Employee_PayRoll_Service add 
  BasicPay money,
  Deductions money,
  TaxablePay money,
  IncomeTax money,
  NetPay money;

  
  --UC 10 Inserted Data Again But two same Name has to different

   select * from Employee_PayRoll_Service
   UPDATE Employee_PayRoll_Service SET Department = 'Sales' WHERE id= 100;
   UPDATE Employee_PayRoll_Service SET Department = 'Marketing' WHERE id= 102;


   --UC 11 create Table EmpDepartment & ER diagram
   USE Employee_PayRoll_Service;
   create Table employee_Dept(
   Id int identity (1,1) primary key,
   Dept_Name varchar(20) not null,
   )
   select * from employee_Dept

   Alter table Employee_PayRoll_Service ADD Dept_id int foreign key references employee_Dept(Id);

   
  --UC 12 Retriving All Quries done like UC4 ,UC5 & UC7 are working with New Table Sructure.

  insert into employee_Dept values('HR')
  insert into employee_Dept values('Sales')