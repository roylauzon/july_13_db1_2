CREATE TABLE [Sales].[vSalesPerson] (
    [BusinessEntityID]  INT           NOT NULL,
    [Title]             NVARCHAR (8)  NULL,
    [FirstName]         NVARCHAR (50) NOT NULL,
    [MiddleName]        NVARCHAR (50) NULL,
    [LastName]          NVARCHAR (50) NOT NULL,
    [Suffix]            NVARCHAR (10) NULL,
    [JobTitle]          NVARCHAR (50) NOT NULL,
    [PhoneNumber]       NVARCHAR (25) NULL,
    [PhoneNumberType]   NVARCHAR (50) NULL,
    [EmailAddress]      NVARCHAR (50) NULL,
    [EmailPromotion]    INT           NOT NULL,
    [AddressLine1]      NVARCHAR (60) NOT NULL,
    [AddressLine2]      NVARCHAR (60) NULL,
    [City]              NVARCHAR (30) NOT NULL,
    [StateProvinceName] NVARCHAR (50) NOT NULL,
    [PostalCode]        NVARCHAR (15) NOT NULL,
    [CountryRegionName] NVARCHAR (50) NOT NULL,
    [TerritoryName]     NVARCHAR (50) NULL,
    [TerritoryGroup]    NVARCHAR (50) NULL,
    [SalesQuota]        MONEY         NULL,
    [SalesYTD]          MONEY         NOT NULL,
    [SalesLastYear]     MONEY         NOT NULL
);


GO

