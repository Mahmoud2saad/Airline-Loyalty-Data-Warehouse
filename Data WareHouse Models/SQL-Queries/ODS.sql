-- CREATE DATABASE AirlineODS
CREATE DATABASE LoyaltyODS;

USE LoyaltyODS;
GO

--CREATE TABLE FLIGHT ACTIVITY
CREATE TABLE FlightsAct(
LoyaltyNumber INT,
Year INT,
Month INT,
TotalFlights INT,
Distance INT,
PointsAccumulated INT,
PointsRedeemed FLOAT,
DollarCoastsPR INT
);


--CREATE TABLE LOYALITY HISTORY
CREATE TABLE LoyaltyHist(
 LoyaltyNumber INT,     
 Country NVARCHAR(30),           
 Province NVARCHAR(30),
 City NVARCHAR(30),       
 PostalCode NVARCHAR(10),
 Gender NVARCHAR(10),
 Education NVARCHAR(40),  
 Salary FLOAT ,
 MaritalStatus NVARCHAR(30),
 LoyaltyCard NVARCHAR(30), 
 CLV FLOAT,        
 EnrollmentType NVARCHAR(30),
 EnrollmentYear INT,  
 EnrollmentMonth INT,  
 CancellationYear INT,
 CancellationMonth INT

 CONSTRAINT loyalty_hist_pk PRIMARY KEY(LoyaltyNumber)
)
