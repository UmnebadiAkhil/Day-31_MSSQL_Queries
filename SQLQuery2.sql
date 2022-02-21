
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