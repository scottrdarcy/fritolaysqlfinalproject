


--write a select query that utilizes a where clause 


Select * 
from Employees
where Gender='female';

--write a select query that uses an OR and AND  operator

Select [name], PhoneNumber 
from Employees
where Birthdate < '01/01/2002' or Birthdate > '01/01/1970' and gender ='female';

--write a select query that filters nulls rows using not null

Select [StoreID]
from ManagerAssignedStores
where StoreClose is null;

Select [StoreID]
from ManagerAssignedStores
where StoreClose is not null;

--write a dml statement that updates a set of rows with a where clause.  The values in the where clause should be a variable.  


Declare @XmasShipment varchar(30) = 'SpecialShipment'
Update Shipments
set InvoiceNumber = @XmasShipment
where StoreID = 9 and InvoiceNumber ='15';

--write a DML statement that deletes a set of rows with a where clause. 
--The values used in the where clause should be a variable.

Declare @TempManager varchar(20) ='Bill Jackson'
Update Employees 
SET [NAME] = @TempManager
WHERE EmployeeID='1'

Delete Employees
where [name]=@TempManager;

----write a select query that utilizes a join

select Employees.EmployeeID,Employees.PhoneNumber,Employees.[Name],Shipments.InvoiceNumber
from Employees
join shipments 
on Employees.EmployeeID = Shipments.EmployeeID;

--write a select query that utilizes a join with three or more tables

Select 
	Stores.StoreID,
	Stores.StoreName,
	Stores.ZipCode,
	Shipments.StoreID,
	ManagerAssignedStores.ManagerID
From Stores
join ManagerAssignedStores
on Stores.StoreID = ManagerAssignedStores.StoreID
join shipments
on Shipments.StoreID=ManagerAssignedStores.StoreID;

--write a select query that utilizes a left join
select Employees.EmployeeID, Employees.[Name], Employees.PhoneNumber
from Employees
left join Shipments
on Employees.EmployeeID= Shipments.EmployeeID  

--write a select query that utilizes a variable in the where clause 
-- can I Make an array in sql?

Declare @SpecialShipment varchar (20)
set @SpecialShipment = 'XmasPromoiton'
Update Shipments
Set InvoiceNumber = @SpecialShipment
where StoreID = 3;


--write a select query that utilizes an order by clause 

Select Employees.Name, Employees.Birthdate
from Employees
order by Employees.Birthdate;

-- write a select query that utilizes a group by clause 
Select Shipments.StoreID,count(Shipments.EmployeeID)
from Shipments 
where Shipments.DockTime > '9:00 AM'
group by Shipments.StoreID;




--write a select query that utilizes a calculated field 

Select Datediff(year,Birthdate,getdate()) Age 
from Employees;

--write a select query that utilizes a subquery 
SELECT Employees.EmployeeID,Employees.[Name],Employees.PhoneNumber
FROM Employees
WHERE Employees.EmployeeID = 
	ANY  (Select Shipments.EmployeeID from Shipments where Shipments.InvoiceNumber = '42');

--write a select query that utilizes a join, two operators (and, or, =, in, between, etc.)  and a group by
--with an agregate function

Select Employees.[Name], count(Shipments.InvoiceNumber) as TotalShipments
from Employees
left join Shipments
on Employees.EmployeeID=Shipments.EmployeeID
group by Employees.[Name]
having count(Shipments.InvoiceNumber) > 0 ;

--write a select query that utilizes a join of three or more tables, two operators, a group by, and an agregate funtion
-- this does not work 

Select count(*) [Count], stores.ZipCode--Employees.EmployeeID,Employees.PhoneNumber,Employees.[Name],Shipments.DockTime,Stores.StoreName
from Employees
join Shipments
on Employees.EmployeeID=Shipments.EmployeeID
join Stores
on Shipments.StoreID=Stores.StoreID
where shipments.DockTime > dateadd(DAY,-30,getdate()) and stores.zipcode IS NOT NULL
group by stores.ZipCode

-- design a non clustered index with one key column that improves the performance of one of the above queries.
create index ix_Zipcode_stores on stores(zipcode);
--drop index ix_Zipcode_stores on stores

-- design a non clustered index with two key columns that improves the performance of the above queries.


-- design a non clustered index with one key column and atleast one included that improves the performance of the 
--index.  










