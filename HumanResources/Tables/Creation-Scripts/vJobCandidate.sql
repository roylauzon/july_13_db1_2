CREATE TABLE [HumanResources].[vJobCandidate] (
    [JobCandidateID]         INT            NOT NULL,
    [BusinessEntityID]       INT            NULL,
    [Name.Prefix]            NVARCHAR (30)  NULL,
    [Name.First]             NVARCHAR (30)  NULL,
    [Name.Middle]            NVARCHAR (30)  NULL,
    [Name.Last]              NVARCHAR (30)  NULL,
    [Name.Suffix]            NVARCHAR (30)  NULL,
    [Skills]                 NVARCHAR (MAX) NULL,
    [Addr.Type]              NVARCHAR (30)  NULL,
    [Addr.Loc.CountryRegion] NVARCHAR (100) NULL,
    [Addr.Loc.State]         NVARCHAR (100) NULL,
    [Addr.Loc.City]          NVARCHAR (100) NULL,
    [Addr.PostalCode]        NVARCHAR (20)  NULL,
    [EMail]                  NVARCHAR (MAX) NULL,
    [WebSite]                NVARCHAR (MAX) NULL,
    [ModifiedDate]           DATETIME       NOT NULL
);


GO

