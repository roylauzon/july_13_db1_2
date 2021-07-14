CREATE TABLE [Purchasing].[vVendorWithContacts] (
    [BusinessEntityID] INT           NOT NULL,
    [Name]             NVARCHAR (50) NOT NULL,
    [ContactType]      NVARCHAR (50) NOT NULL,
    [Title]            NVARCHAR (8)  NULL,
    [FirstName]        NVARCHAR (50) NOT NULL,
    [MiddleName]       NVARCHAR (50) NULL,
    [LastName]         NVARCHAR (50) NOT NULL,
    [Suffix]           NVARCHAR (10) NULL,
    [PhoneNumber]      NVARCHAR (25) NULL,
    [PhoneNumberType]  NVARCHAR (50) NULL,
    [EmailAddress]     NVARCHAR (50) NULL,
    [EmailPromotion]   INT           NOT NULL
);


GO

