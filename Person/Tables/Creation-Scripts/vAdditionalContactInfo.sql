CREATE TABLE [Person].[vAdditionalContactInfo] (
    [BusinessEntityID]               INT              NOT NULL,
    [FirstName]                      NVARCHAR (50)    NOT NULL,
    [MiddleName]                     NVARCHAR (50)    NULL,
    [LastName]                       NVARCHAR (50)    NOT NULL,
    [TelephoneNumber]                NVARCHAR (50)    NULL,
    [TelephoneSpecialInstructions]   NVARCHAR (MAX)   NULL,
    [Street]                         NVARCHAR (50)    NULL,
    [City]                           NVARCHAR (50)    NULL,
    [StateProvince]                  NVARCHAR (50)    NULL,
    [PostalCode]                     NVARCHAR (50)    NULL,
    [CountryRegion]                  NVARCHAR (50)    NULL,
    [HomeAddressSpecialInstructions] NVARCHAR (MAX)   NULL,
    [EMailAddress]                   NVARCHAR (128)   NULL,
    [EMailSpecialInstructions]       NVARCHAR (MAX)   NULL,
    [EMailTelephoneNumber]           NVARCHAR (50)    NULL,
    [rowguid]                        UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate]                   DATETIME         NOT NULL
);


GO

