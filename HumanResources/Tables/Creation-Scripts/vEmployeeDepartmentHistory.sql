CREATE TABLE [HumanResources].[vEmployeeDepartmentHistory] (
    [BusinessEntityID] INT           NOT NULL,
    [Title]            NVARCHAR (8)  NULL,
    [FirstName]        NVARCHAR (50) NOT NULL,
    [MiddleName]       NVARCHAR (50) NULL,
    [LastName]         NVARCHAR (50) NOT NULL,
    [Suffix]           NVARCHAR (10) NULL,
    [Shift]            NVARCHAR (50) NOT NULL,
    [Department]       NVARCHAR (50) NOT NULL,
    [GroupName]        NVARCHAR (50) NOT NULL,
    [StartDate]        DATE          NOT NULL,
    [EndDate]          DATE          NULL
);


GO

