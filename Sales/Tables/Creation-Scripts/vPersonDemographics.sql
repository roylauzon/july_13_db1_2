CREATE TABLE [Sales].[vPersonDemographics] (
    [BusinessEntityID]     INT           NOT NULL,
    [TotalPurchaseYTD]     MONEY         NULL,
    [DateFirstPurchase]    DATETIME      NULL,
    [BirthDate]            DATETIME      NULL,
    [MaritalStatus]        NVARCHAR (1)  NULL,
    [YearlyIncome]         NVARCHAR (30) NULL,
    [Gender]               NVARCHAR (1)  NULL,
    [TotalChildren]        INT           NULL,
    [NumberChildrenAtHome] INT           NULL,
    [Education]            NVARCHAR (30) NULL,
    [Occupation]           NVARCHAR (30) NULL,
    [HomeOwnerFlag]        BIT           NULL,
    [NumberCarsOwned]      INT           NULL
);


GO

