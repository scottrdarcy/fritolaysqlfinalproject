USE [master]
DROP DATABASE [ApplicanttoHire3DB2]
GO
CREATE DATABASE [ApplicanttoHire3DB2]
GO
USE [ApplicanttoHire3DB2]
GO


/****** Object:  Table [dbo].[CompanyManagers]    Script Date: 11/14/2020 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyManagers](
	[ManagerID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](20) NULL,
 CONSTRAINT [PK__CompanyM__2CC2CDB9802E471E] PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 11/14/2020 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[PhoneNumber] [varchar](25) NOT NULL,
	[Gender] [varchar](10) NULL,
	[Birthdate] [date] NULL,
	[ManagerID] [int] NULL,
 CONSTRAINT [PK__Employee__7AD04FF14D106A69] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManagerAssignedStores]    Script Date: 11/14/2020 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagerAssignedStores](
	[StoreID] [int] NOT NULL,
	[StoreOpen] [datetime] NOT NULL,
	[ManagerID] [int] NOT NULL,
	[StoreClose] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipments]    Script Date: 11/14/2020 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipments](
	[StoreID] [int] NULL,
	[EmployeeID] [int] NULL,
	[DockTime] [datetime] NULL,
	[InvoiceNumber] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stores]    Script Date: 11/14/2020 5:40:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stores](
	[StoreID] [int] NOT NULL,
	[StoreName] [varchar](20) NOT NULL,
	[ZipCode] [varchar](20) NULL,
	[WeeklySales] [int] NULL,
 CONSTRAINT [PK__Stores__3B82F0E1C6A16C07] PRIMARY KEY CLUSTERED 
(
	[StoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CompanyManagers] ON 

INSERT [dbo].[CompanyManagers] ([ManagerID], [Title]) VALUES (1, N'District Manager')
SET IDENTITY_INSERT [dbo].[CompanyManagers] OFF
GO
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (1, N'Cort Hanmer', N'125-581-8680', N'Male', CAST('1963-06-15' as date), NULL)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (3, N'Randi Matussevich', N'602-960-5854', N'Male','1975-06-16', 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (4, N'Lemmy Fancutt', N'117-436-3953', N'Male', CAST(N'1963-01-19' as date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (5, N'Killian Dikels', N'149-830-9627', N'Male',CAST('1955-10-12' as date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (6, N'Dylan Twinning', N'245-509-4163', N'Male', CAST(N'1941-11-14' AS Date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (7, N'Hadleigh Larter', N'209-780-1434', N'Male', CAST(N'1907-11-30' AS Date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (8, N'Anne-corinne Halcro', N'987-386-1968', N'Female', CAST(N'1911-12-24' AS Date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (9, N'Felizio Blackaller', N'895-822-5897', N'Male', CAST(N'1981-06-28' AS Date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (10, N'Catina Davidsson', N'322-598-4933', N'Female', CAST(N'1933-05-23' AS Date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (11, N'Gaynor Beeckx', N'605-883-6664', N'Female', CAST(N'1930-09-03' AS Date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (12, N'Millicent Livett', N'947-162-9666', N'Female', CAST(N'1938-03-06' AS Date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (13, N'Millard Beevis', N'175-294-5715', N'Male', CAST(N'1900-07-30' AS Date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (14, N'Barnaby Whitebread', N'422-762-1929', N'Male', CAST(N'1975-01-24' as date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (15, N'Batholomew Strathearn', N'231-347-2252', N'Male', CAST(N'2020-05-20' AS Date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (16, N'Teresita Tigner', N'146-984-2695', N'Female', CAST(N'2019-12-15' AS Date), 1)
INSERT [dbo].[Employees] ([EmployeeID], [Name], [PhoneNumber], [Gender], [Birthdate], [ManagerID]) VALUES (17, N'Brina Klamman', N'764-212-1167', N'Female', CAST(N'2019-12-05' AS Date), 1)
GO
INSERT [dbo].[ManagerAssignedStores] ([StoreID], [StoreOpen], [ManagerID], [StoreClose]) VALUES (1, CAST(N'2020-11-14T17:36:39.057' AS DateTime), 1, null)
INSERT [dbo].[ManagerAssignedStores] ([StoreID], [StoreOpen], [ManagerID], [StoreClose]) VALUES (2, CAST(N'2020-11-14T17:36:39.070' AS DateTime), 1, CAST(N'2020-11-14T17:36:39.070' AS DateTime))
INSERT [dbo].[ManagerAssignedStores] ([StoreID], [StoreOpen], [ManagerID], [StoreClose]) VALUES (3, CAST(N'2020-11-14T17:36:46.013' AS DateTime), 1, null)
INSERT [dbo].[ManagerAssignedStores] ([StoreID], [StoreOpen], [ManagerID], [StoreClose]) VALUES (4, CAST(N'2020-11-14T17:36:46.017' AS DateTime), 1, null)
INSERT [dbo].[ManagerAssignedStores] ([StoreID], [StoreOpen], [ManagerID], [StoreClose]) VALUES (5, CAST(N'2020-11-14T17:37:13.033' AS DateTime), 1, CAST(N'2020-11-14T17:37:13.033' AS DateTime))
GO
INSERT [dbo].[Shipments] ([StoreID], [EmployeeID], [DockTime], [InvoiceNumber]) VALUES (1, 11, '8:22:22.537 AM', N'12')
INSERT [dbo].[Shipments] ([StoreID], [EmployeeID], [DockTime], [InvoiceNumber]) VALUES (3, 9, '9:22:22.567 AM', N'15')
INSERT [dbo].[Shipments] ([StoreID], [EmployeeID], [DockTime], [InvoiceNumber]) VALUES (3, 4, '9:30 AM', N'19')
INSERT [dbo].[Shipments] ([StoreID], [EmployeeID], [DockTime], [InvoiceNumber]) VALUES (5, 4, CAST(N'2020-11-14T17:22:22.570' AS DateTime), N'22')
INSERT [dbo].[Shipments] ([StoreID], [EmployeeID], [DockTime], [InvoiceNumber]) VALUES (4, 8, CAST(N'2020-11-14T17:22:22.570' AS DateTime), N'42')
INSERT [dbo].[Shipments] ([StoreID], [EmployeeID], [DockTime], [InvoiceNumber]) VALUES (2, 3, CAST(N'2020-11-14T17:22:22.570' AS DateTime), N'92')
GO
INSERT [dbo].[Stores] ([StoreID], [StoreName], [ZipCode], [WeeklySales]) VALUES (1, N'Skaboo', N'541018', 15752)
INSERT [dbo].[Stores] ([StoreID], [StoreName], [ZipCode], [WeeklySales]) VALUES (2, N'Bluejam', N'2430-186', 17126)
INSERT [dbo].[Stores] ([StoreID], [StoreName], [ZipCode], [WeeklySales]) VALUES (3, N'Dabfeed', N'T56', 14174)
INSERT [dbo].[Stores] ([StoreID], [StoreName], [ZipCode], [WeeklySales]) VALUES (4, N'Babblestorm', N'30430', 13664)
INSERT [dbo].[Stores] ([StoreID], [StoreName], [ZipCode], [WeeklySales]) VALUES (5, N'Realbuzz', NULL, 14580)
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_CompanyManagers2] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[CompanyManagers] ([ManagerID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_CompanyManagers2]
GO
ALTER TABLE [dbo].[ManagerAssignedStores]  WITH CHECK ADD  CONSTRAINT [FK_ManagerAssignedStores_CompanyManagers] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[CompanyManagers] ([ManagerID])
GO
ALTER TABLE [dbo].[ManagerAssignedStores] CHECK CONSTRAINT [FK_ManagerAssignedStores_CompanyManagers]
GO
ALTER TABLE [dbo].[ManagerAssignedStores]  WITH CHECK ADD  CONSTRAINT [FK_ManagerAssignedStores_Stores] FOREIGN KEY([StoreID])
REFERENCES [dbo].[Stores] ([StoreID])
GO

--ALTER TABLE [dbo].[ManagerAssignedStores] CHECK CONSTRAINT [FK_ManagerAssignedStores_Stores]
--GO
ALTER TABLE [dbo].[Shipments]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Shipments] CHECK CONSTRAINT [FK_Shipments_Employees]
GO
ALTER TABLE [dbo].[Shipments]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Stores] FOREIGN KEY([StoreID])
REFERENCES [dbo].[Stores] ([StoreID])
GO
ALTER TABLE [dbo].[Shipments] CHECK CONSTRAINT [FK_Shipments_Stores]
GO




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
create nonclustered index ix_Zipcode_stores on stores(zipcode);
--drop index ix_Zipcode_stores on stores

-- design a non clustered index with two key columns that improves the performance of the above queries.
 create nonclustered index ix_genderbirtdate_employess on employees(gender,birthdate);

-- design a non clustered index with one key column and atleast one included that improves the performance of the 
--index. 
create nonclustered index ix_employeeid on employees(employeeid) 
include
	([name], PhoneNumber) ;

--Write a DML statement that DELETEs rows from a table that another table references. This script will have to also DELETE any records that reference these rows. 
--Both of the DELETE statements need to be wrapped in a single TRANSACTION. 

begin transaction
delete from dbo.Managers where Id = 1
delete from dbo.Employees where Id = 1 
commit transaction

--Write a DML statement that UPDATEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable 
declare @employeeIds int
set @employeeIds = 2
update dbo.Employee set Zipcode = '40291' where EmployeeId > @employeeId;

--Write a DML statement that DELETEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable  
declare @employeeIdz int
set @employeeIdz = 2
delete from dbo.Employee where EmployeeId > @employeeId;









