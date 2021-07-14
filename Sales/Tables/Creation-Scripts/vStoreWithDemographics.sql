CREATE TABLE [Sales].[vStoreWithDemographics] (
    [BusinessEntityID] INT           NOT NULL,
    [Name]             NVARCHAR (50) NOT NULL,
    [AnnualSales]      MONEY         NULL,
    [AnnualRevenue]    MONEY         NULL,
    [BankName]         NVARCHAR (50) NULL,
    [BusinessType]     NVARCHAR (5)  NULL,
    [YearOpened]       INT           NULL,
    [Specialty]        NVARCHAR (50) NULL,
    [SquareFeet]       INT           NULL,
    [Brands]           NVARCHAR (30) NULL,
    [Internet]         NVARCHAR (30) NULL,
    [NumberEmployees]  INT           NULL
);


GO

