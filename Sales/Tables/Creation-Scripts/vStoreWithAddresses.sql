CREATE TABLE [Sales].[vStoreWithAddresses] (
    [BusinessEntityID]  INT           NOT NULL,
    [Name]              NVARCHAR (50) NOT NULL,
    [AddressType]       NVARCHAR (50) NOT NULL,
    [AddressLine1]      NVARCHAR (60) NOT NULL,
    [AddressLine2]      NVARCHAR (60) NULL,
    [City]              NVARCHAR (30) NOT NULL,
    [StateProvinceName] NVARCHAR (50) NOT NULL,
    [PostalCode]        NVARCHAR (15) NOT NULL,
    [CountryRegionName] NVARCHAR (50) NOT NULL
);


GO

