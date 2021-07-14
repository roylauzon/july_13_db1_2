CREATE TABLE [Sales].[Customer] (
    [CustomerID]    INT              NOT NULL,
    [PersonID]      INT              NULL,
    [StoreID]       INT              NULL,
    [TerritoryID]   INT              NULL,
    [AccountNumber] VARCHAR (10)     NOT NULL,
    [rowguid]       UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate]  DATETIME         NOT NULL
);


GO

