CREATE DATABASE LoyaltyDWH;

USE LoyaltyDWH;
GO

CREATE TABLE [DateDim] (
  [DateID] INT,
  [Year] INT,
  [Month] INT,
  [MonthName] VARCHAR(10),
  [Quarter] VARCHAR(2),
  [Season] VARCHAR(10),
  PRIMARY KEY ([DateID])
);


CREATE TABLE [EnrollInfoDim] (
  [EInfoID] INT IDENTITY,
  [LoyaltyCard] NVARCHAR(20),
  [EnrollmentType] NVARCHAR(20),
  PRIMARY KEY ([EInfoID])
);


CREATE TABLE [PersonalInfoDim] (
  [InfoID] INT IDENTITY,
  [Education] NVARCHAR(30),
  [MaritalStatus] NVARCHAR(30),
  PRIMARY KEY ([InfoID])
);


CREATE TABLE [LocationDim] (
  [LocID] INT IDENTITY,
  [Country] NVARCHAR(20),
  [Provience] NVARCHAR(20),
  [City] NVARCHAR(20),
  [PostalCode] NVARCHAR(10),
  PRIMARY KEY ([LocID])
);

CREATE TABLE [GenderDim] (
  [GenderID] INT IDENTITY,
  [Gender] NVARCHAR(6),
  PRIMARY KEY ([GenderID])
);


CREATE TABLE [FlightsActFact] (
  [ActID] INT IDENTITY,
  [CustomerID] INT,
  [TotalFlights] INT,
  [Distance] INT,
  [PointsAccum] INT,
  [PointsRedeemed] FLOAT,
  [DollarCostPerPR] INT,
  [PeriodDateID] INT,
  [EnrollDateID] INT,
  [CancelDateID] INT,
  [EnrollInfoID] INT,
  [PersonalInfoID] INT,
  [LocID] INT,
  [GenderID] INT,
  PRIMARY KEY ([ActID]) 
);

CREATE TABLE [LoyaltyHistoryFact] (
  [CustomerID] INT IDENTITY,
  [LoyaltyNumber] INT,
  [Salary] Float,
  [CLV] FLOAT,
  [EnrollDateID] INT,
  [CancelDateID] INT,
  [EnrollInfoID] INT,
  [PersonalInfoID] INT,
  [LocID] INT,
  [GenderID] INT,
  PRIMARY KEY ([CustomerID])
);


