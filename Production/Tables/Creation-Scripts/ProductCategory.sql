CREATE TABLE [Production].[ProductCategory] (
    [ProductCategoryID] INT              NOT NULL,
    [Name]              NVARCHAR (50)    NOT NULL,
    [rowguid]           UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate]      DATETIME         NOT NULL
);


GO
