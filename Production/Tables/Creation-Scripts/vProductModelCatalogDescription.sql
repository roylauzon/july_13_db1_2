CREATE TABLE [Production].[vProductModelCatalogDescription] (
    [ProductModelID]         INT              NOT NULL,
    [Name]                   NVARCHAR (50)    NOT NULL,
    [Summary]                NVARCHAR (MAX)   NULL,
    [Manufacturer]           NVARCHAR (MAX)   NULL,
    [Copyright]              NVARCHAR (30)    NULL,
    [ProductURL]             NVARCHAR (256)   NULL,
    [WarrantyPeriod]         NVARCHAR (256)   NULL,
    [WarrantyDescription]    NVARCHAR (256)   NULL,
    [NoOfYears]              NVARCHAR (256)   NULL,
    [MaintenanceDescription] NVARCHAR (256)   NULL,
    [Wheel]                  NVARCHAR (256)   NULL,
    [Saddle]                 NVARCHAR (256)   NULL,
    [Pedal]                  NVARCHAR (256)   NULL,
    [BikeFrame]              NVARCHAR (MAX)   NULL,
    [Crankset]               NVARCHAR (256)   NULL,
    [PictureAngle]           NVARCHAR (256)   NULL,
    [PictureSize]            NVARCHAR (256)   NULL,
    [ProductPhotoID]         NVARCHAR (256)   NULL,
    [Material]               NVARCHAR (256)   NULL,
    [Color]                  NVARCHAR (256)   NULL,
    [ProductLine]            NVARCHAR (256)   NULL,
    [Style]                  NVARCHAR (256)   NULL,
    [RiderExperience]        NVARCHAR (1024)  NULL,
    [rowguid]                UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate]           DATETIME         NOT NULL
);


GO

