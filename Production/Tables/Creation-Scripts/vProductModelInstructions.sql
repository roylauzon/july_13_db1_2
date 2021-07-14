CREATE TABLE [Production].[vProductModelInstructions] (
    [ProductModelID] INT              NOT NULL,
    [Name]           NVARCHAR (50)    NOT NULL,
    [Instructions]   NVARCHAR (MAX)   NULL,
    [LocationID]     INT              NULL,
    [SetupHours]     DECIMAL (9, 4)   NULL,
    [MachineHours]   DECIMAL (9, 4)   NULL,
    [LaborHours]     DECIMAL (9, 4)   NULL,
    [LotSize]        INT              NULL,
    [Step]           NVARCHAR (1024)  NULL,
    [rowguid]        UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate]   DATETIME         NOT NULL
);


GO

