USE LoyaltySTG;
GO

IF OBJECT_ID('dbo.sp_CreateDateDim', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_CreateDateDim;
GO

CREATE PROCEDURE dbo.sp_CreateDateDim
AS
BEGIN
    SET NOCOUNT ON;

    -- Drop existing DateDim table if it exists
    IF OBJECT_ID('dbo.DateDim', 'U') IS NOT NULL
        DROP TABLE dbo.DateDim;

    -- Create new DateDim table
    CREATE TABLE dbo.DateDim (
        DateID INT PRIMARY KEY,           -- YYYYMM
        [Year] INT,
        [Month] INT,
        MonthName VARCHAR(10),
        Quarter VARCHAR(2),
        Season VARCHAR(10)
    );

    -- Insert default unknown value row
    INSERT INTO dbo.DateDim (
        DateID, [Year], [Month], MonthName, Quarter, Season
    )
    VALUES (
        0, 0, 0, 'Unknown', 'Q0', 'Unknown'
    );

    DECLARE @Year INT = 2012;
    DECLARE @Month INT = 1;

    WHILE @Year <= 2018
    BEGIN
        WHILE @Month <= 12
        BEGIN
            INSERT INTO dbo.DateDim (
                DateID, [Year], [Month], MonthName, Quarter, Season
            )
            SELECT
                (@Year * 100) + @Month,
                @Year,
                @Month,
                DATENAME(MONTH, DATEFROMPARTS(@Year, @Month, 1)),
                CONCAT('Q', DATEPART(QUARTER, DATEFROMPARTS(@Year, @Month, 1))),
                CASE @Month
                    WHEN 12 THEN 'Winter'
                    WHEN 1 THEN 'Winter'
                    WHEN 2 THEN 'Winter'
                    WHEN 3 THEN 'Spring'
                    WHEN 4 THEN 'Spring'
                    WHEN 5 THEN 'Spring'
                    WHEN 6 THEN 'Summer'
                    WHEN 7 THEN 'Summer'
                    WHEN 8 THEN 'Summer'
                    WHEN 9 THEN 'Fall'
                    WHEN 10 THEN 'Fall'
                    WHEN 11 THEN 'Fall'
                END;

            SET @Month = @Month + 1;
        END

        SET @Month = 1;
        SET @Year = @Year + 1;
    END
END;
GO



EXEC dbo.sp_CreateDateDim;
