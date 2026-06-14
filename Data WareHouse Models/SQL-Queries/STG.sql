CREATE DATABASE LoyaltySTG;

USE LoyaltySTG;
GO

--CREATE THE DIMENSIONS OF THE DATABASE
--1) CREATE TABLE LocationDim
CREATE TABLE [LocationDim] (
  [Country] NVARCHAR(20),
  [Provience] NVARCHAR(20),
  [City] NVARCHAR(20),
  [PostalCode] NVARCHAR(10),
);

--2)CREATE TABLE GenderDim
CREATE TABLE [GenderDim] (
  [Gender] NVARCHAR(6),
);


--3)CREATE TABLE EnrollmentInfoDim
CREATE TABLE [EnrollmentInfoDim] (
  [LoyaltyCard] NVARCHAR(20),
  [EnrollmentType] NVARCHAR(20),
);

--4) CREATE TABLE PersonalInfoDim
CREATE TABLE [PersonalInfoDim] (
  [Education] NVARCHAR(30),
  [MaritalStatus] NVARCHAR(30),
);

--5) CREATE TABLE CustomersDIM
CREATE TABLE [CustomersDim] (
  [LoyaltyNumber] INT,
  [Gender] NVARCHAR(10),
  [EnrollType] NVARCHAR(20),
  [LoyaltyCard]NVARCHAR(20),
  [PostalCode] NVARCHAR(10),
  [Education] NVARCHAR(30),
  [MaritalStatus] NVARCHAR(30),
  [EnrollYear] INT,
  [EnrollMonth] INT,
  [CancelYear] INT,
  [CancelMonth] INT
  PRIMARY KEY ([CustomerID])
);


--6)CREATE TABLE FlightsActFact
CREATE TABLE [FlightsActFact] (
  [LoyaltyNumber] INT,
  [Total Flights] INT,
  [Distance] INT,
  [PointsAccum] INT,
  [PointsRedeemed] FLOAT,
  [DollarCostPerPR] INT,
  [PeriodYear] INT,
  [PeriodMonth] INT,
  [Gender] NVARCHAR(10),
  [EnrollType] NVARCHAR(20),
  [LoyaltyCard]NVARCHAR(20),
  [PostalCode] NVARCHAR(10),
  [Education] NVARCHAR(30),
  [MaritalStatus] NVARCHAR(30),
  [EnrollYear] INT,
  [EnrollMonth] INT,
  [CancelYear] INT,
  [CancelMonth] INT
);

--7)CREATE TABLE LoyaltyHistFact
CREATE TABLE [LoyaltyHistFact] (
  [Salary] FLOAT,
  [CLV] FLOAT,
  [LoyaltyNumber] INT,
  [Gender] NVARCHAR(10),
  [EnrollType] NVARCHAR(20),
  [LoyaltyCard]NVARCHAR(20),
  [PostalCode] NVARCHAR(10),
  [Education] NVARCHAR(30),
  [MaritalStatus] NVARCHAR(30),
  [EnrollYear] INT,
  [EnrollMonth] INT,
  [CancelYear] INT,
  [CancelMonth] INT
);





