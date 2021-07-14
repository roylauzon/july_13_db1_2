CREATE TABLE [Person].[EmailAddress] (
    [BusinessEntityID] INT              NOT NULL,
    [EmailAddressID]   INT              NOT NULL,
    [EmailAddress]     NVARCHAR (50)    NULL,
    [rowguid]          UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate]     DATETIME         NOT NULL
);


GO

