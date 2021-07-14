CREATE TABLE [HumanResources].[vJobCandidateEmployment] (
    [JobCandidateID]        INT            NOT NULL,
    [Emp.StartDate]         DATETIME       NULL,
    [Emp.EndDate]           DATETIME       NULL,
    [Emp.OrgName]           NVARCHAR (100) NULL,
    [Emp.JobTitle]          NVARCHAR (100) NULL,
    [Emp.Responsibility]    NVARCHAR (MAX) NULL,
    [Emp.FunctionCategory]  NVARCHAR (MAX) NULL,
    [Emp.IndustryCategory]  NVARCHAR (MAX) NULL,
    [Emp.Loc.CountryRegion] NVARCHAR (MAX) NULL,
    [Emp.Loc.State]         NVARCHAR (MAX) NULL,
    [Emp.Loc.City]          NVARCHAR (MAX) NULL
);


GO

