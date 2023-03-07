USE  zerctech 
GO

CREATE TABLE employees(
	EMPLOYEE_ID int NOT NULL,
	FIRST_NAME varchar(20) not NULL,
	LAST_NAME   varchar(25) not NULL,
	EMAIL  varchar(25) not NULL,
	PHONE_NUMBER   varchar(20) not NULL,
	HIRE_DATE   date not NULL,
	JOB_ID   varchar(20) not NULL,
	SALARY   int not NULL,
	COMMISSION_PCT   int not NULL,
	MANAGER_ID   int not NULL,
	DEPARTMENT_ID   int not NULL,
)
GO

INSERT INTO employees(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES(1, 'Emmanuel', 'Bolaji', 'Bolaji@yahoo.com', '09033675576', '2021-02-08', 'Manager', 100000, 19, 1, 1)
INSERT INTO employees(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES(2, 'Yomi', 'Bolaji', 'Baji@yahoo.com', '09035575576', '2021-02-06', 'Sales rep', 40000, 10, 1, 1)
INSERT INTO employees(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES(3, 'Esther', 'Baji', 'laji@yahoo.com', '08033675576', '2021-02-08', 'Cleaner', 15000, 0, 1, 2)
INSERT INTO employees(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES(4, 'Samuel', 'tunji', 'tech@yahoo.com', '09055675576', '2022-10-10', 'Electrician', 50000, 0, 1, 2)
INSERT INTO employees(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES(5, 'David', 'Shogbogun', 'Sash@yahoo.com', '08096975576', '2022-02-01', 'Secetary', 30000, 15, 1, 1)

select *
from employees

USE  zerctech 
GO

CREATE TABLE locations(
	LOCATION_ID int not NULL,
	STREET_ADDRESS VARCHAR(25) not NULL,
	POSTAL_CODE VARCHAR(12) not NULL,
	CITY VARCHAR(30) not NULL,
	STATE_PROVINCE VARCHAR(12) not NULL,
	COUNTRY_ID CHAR(2) not NULL,
)
GO
INSERT [locations] ([LOCATION_ID], [STREET_ADDRESS], [POSTAL_CODE], [CITY], [STATE_PROVINCE], [COUNTRY_ID]) VALUES (1, '55 Kofo Steet', 'GH543', 'OSU', 'ACCRA', 2)
INSERT [locations] ([LOCATION_ID], [STREET_ADDRESS], [POSTAL_CODE], [CITY], [STATE_PROVINCE], [COUNTRY_ID]) VALUES (2,'12 OBALENDE STREET', '101211', 'IKOYI', 'LAGOS', 1)
INSERT [locations] ([LOCATION_ID], [STREET_ADDRESS], [POSTAL_CODE], [CITY], [STATE_PROVINCE], [COUNTRY_ID]) VALUES (3,'UHURU KENYATTA AVENUE', 'KN2378', 'NAIROBI', 'NAIROBI', 3)
INSERT [locations] ([LOCATION_ID], [STREET_ADDRESS], [POSTAL_CODE], [CITY], [STATE_PROVINCE], [COUNTRY_ID]) VALUES (4,'550 WUSE ZONE 2', '23456', 'WUSE', 'ABUJA', 1)
INSERT [locations] ([LOCATION_ID], [STREET_ADDRESS], [POSTAL_CODE], [CITY], [STATE_PROVINCE], [COUNTRY_ID]) VALUES (5,'18 Heracleous Street', '14564ATH', 'KIFISSIA', 'ATHENS', 5)
INSERT [locations] ([LOCATION_ID], [STREET_ADDRESS], [POSTAL_CODE], [CITY], [STATE_PROVINCE], [COUNTRY_ID]) VALUES (6,'367 FLUGHAFEN', 'FK34567', 'FRANKFURT', 'FRANKFURT', 6)
INSERT [locations] ([LOCATION_ID], [STREET_ADDRESS], [POSTAL_CODE], [CITY], [STATE_PROVINCE], [COUNTRY_ID]) VALUES (7,'1908 BEZUKAPAK', 'MN75422', 'MUNICH', 'MUNICH', 6)
INSERT [locations] ([LOCATION_ID], [STREET_ADDRESS], [POSTAL_CODE], [CITY], [STATE_PROVINCE], [COUNTRY_ID]) VALUES (8,'15 UPPER IWEKA ROAD', '45678', 'ONITSHA', 'ANAMBRA', 1)
INSERT [locations] ([LOCATION_ID], [STREET_ADDRESS], [POSTAL_CODE], [CITY], [STATE_PROVINCE], [COUNTRY_ID]) VALUES (9,'456 KOFFI ANNAN AVENUE', 'GH590', 'TAKORADI', 'KUMASI', 2)
INSERT [locations] ([LOCATION_ID], [STREET_ADDRESS], [POSTAL_CODE], [CITY], [STATE_PROVINCE], [COUNTRY_ID]) VALUES (10,'345 UJITAWARA STREET', 'HMA456', 'HIROSHIMA', 'TOKYO', 4)


USE  zerctech 
GO

CREATE TABLE DEPARTMENT(DEPARTMENT_ID INT NOT NULL,
DEPARTMENT_NAME VARCHAR(25) NOT NULL,
MANAGER_ID INT NOT NULL,
LOCATION_ID INT NOT NULL);

INSERT INTO DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID,LOCATION_ID)
VALUES (1, 'Human_Resources', 1, 4);

INSERT INTO DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID,LOCATION_ID)
VALUES (2, 'Finance', 2, 5);

INSERT INTO DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID,LOCATION_ID)
VALUES (3, 'Sales', 3, 2);

INSERT INTO DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID,LOCATION_ID)
VALUES (4, 'Investor_Relations', 4, 3);

INSERT INTO DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID,LOCATION_ID)
VALUES (5, 'Security', 5, 1);

SELECT * 
FROM DEPARTMENT

USE zerctech
GO

CREATE TABLE COUNTRIES(
	COUNTRY_ID char(2) NOT NULL,
	COUNTRY_NAME varchar(40) NOT NULL,
	REGION_ID int NOT NULL)
GO

INSERT INTO [dbo].[COUNTRIES]
           (COUNTRY_ID
           ,COUNTRY_NAME
           ,REGION_ID)
     VALUES
           (1, 
           'Nigeria', 
           1)
INSERT INTO [dbo].[COUNTRIES]
           (COUNTRY_ID
           ,COUNTRY_NAME
           ,REGION_ID)
     VALUES
           (2, 
           'Ghana', 
           1)
INSERT INTO [dbo].[COUNTRIES]
           (COUNTRY_ID
           ,COUNTRY_NAME
           ,REGION_ID)
     VALUES
           (3, 
           'kenya', 
           1)
INSERT INTO [dbo].[COUNTRIES]
           (COUNTRY_ID
           ,COUNTRY_NAME
           ,REGION_ID)
     VALUES
           (4, 
           'Japan', 
           4)
INSERT INTO [dbo].[COUNTRIES]
           (COUNTRY_ID
           ,COUNTRY_NAME
           ,REGION_ID)
     VALUES
           (5, 
           'Greece', 
           5)
INSERT INTO [dbo].[COUNTRIES]
           (COUNTRY_ID
           ,COUNTRY_NAME
           ,REGION_ID)
     VALUES
           (6, 
           'Germany', 
           5)
GO


select *
from COUNTRIES;

------REGIONS TABLE-------------

USE zerctech
GO
CREATE TABLE REGIONS(
REGION_ID integer, REGION_NAME varchar(25));
GO



INSERT INTO REGIONS(
REGION_ID, REGION_NAME)
VALUES
(1, 'africa'),
(2, 'North America'),
(3, 'South America'),
(4, 'Asia'),
(5, 'Europe'),
(6, 'Australian')
SELECT * FROM REGIONS


select COUNTRY_ID, COUNTRY_NAME, (select REGION_ID from zerctech.dbo.REGIONS)
FROM [zerctech].[dbo].[COUNTRIES] a

select [zerctech].[dbo].[COUNTRIES].*, [zerctech].[dbo].[REGIONS].*
from [zerctech].[dbo].[COUNTRIES], [zerctech].[dbo].[REGIONS]
where [zerctech].[dbo].[COUNTRIES].REGION_ID = [zerctech].[dbo].[REGIONS].REGION_ID

select COUNTRY_NAME, POSTAL_CODE, CITY, REGION_NAME
from [zerctech].[dbo].[REGIONS], [zerctech].[dbo].[COUNTRIES], [zerctech].[dbo].[locations]
where [zerctech].[dbo].[COUNTRIES].COUNTRY_ID = [zerctech].[dbo].[locations].COUNTRY_ID and [zerctech].[dbo].[COUNTRIES].REGION_ID = [zerctech].[dbo].[REGIONS].REGION_ID

Create View Loction_view
as
select STREET_ADDRESS, CITY, STATE_PROVINCE, COUNTRY_NAME, REGION_NAME
from [zerctech].[dbo].[REGIONS], [zerctech].[dbo].[COUNTRIES], [zerctech].[dbo].[locations]
where [zerctech].[dbo].[COUNTRIES].COUNTRY_ID = [zerctech].[dbo].[locations].COUNTRY_ID and [zerctech].[dbo].[COUNTRIES].REGION_ID = [zerctech].[dbo].[REGIONS].REGION_ID

select * from Loction_view

select count(REGION_NAME)
from [zerctech].[dbo].[REGIONS]

Create View Staff_details
as
select FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE, SALARY, DEPARTMENT_NAME, STREET_ADDRESS, CITY, STATE_PROVINCE, COUNTRY_NAME, REGION_NAME 
from [zerctech].[dbo].[REGIONS], [zerctech].[dbo].[COUNTRIES], [zerctech].[dbo].[locations], [zerctech].[dbo].[DEPARTMENT], [zerctech].[dbo].[employees]
where [COUNTRIES].COUNTRY_ID = [locations].COUNTRY_ID and [COUNTRIES].REGION_ID = [REGIONS].REGION_ID and [locations].LOCATION_ID = [DEPARTMENT].LOCATION_ID and [DEPARTMENT].DEPARTMENT_ID = [employees].DEPARTMENT_ID 

select * from Staff_details



