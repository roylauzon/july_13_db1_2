CREATE TABLE [Person].[vStateProvinceCountryRegion] (
    [StateProvinceID]         INT           NOT NULL,
    [StateProvinceCode]       NCHAR (3)     NOT NULL,
    [IsOnlyStateProvinceFlag] BIT           NOT NULL,
    [StateProvinceName]       NVARCHAR (50) NOT NULL,
    [TerritoryID]             INT           NOT NULL,
    [CountryRegionCode]       NVARCHAR (3)  NOT NULL,
    [CountryRegionName]       NVARCHAR (50) NOT NULL
);


GO

