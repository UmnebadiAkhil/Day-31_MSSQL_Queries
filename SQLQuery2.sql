
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