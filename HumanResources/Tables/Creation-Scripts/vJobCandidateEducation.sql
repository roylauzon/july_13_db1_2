CREATE TABLE [HumanResources].[vJobCandidateEducation] (
    [JobCandidateID]        INT            NOT NULL,
    [Edu.Level]             NVARCHAR (MAX) NULL,
    [Edu.StartDate]         DATETIME       NULL,
    [Edu.EndDate]           DATETIME       NULL,
    [Edu.Degree]            NVARCHAR (50)  NULL,
    [Edu.Major]             NVARCHAR (50)  NULL,
    [Edu.Minor]             NVARCHAR (50)  NULL,
    [Edu.GPA]               NVARCHAR (5)   NULL,
    [Edu.GPAScale]          NVARCHAR (5)   NULL,
    [Edu.School]            NVARCHAR (100) NULL,
    [Edu.Loc.CountryRegion] NVARCHAR (100) NULL,
    [Edu.Loc.State]         NVARCHAR (100) NULL,
    [Edu.Loc.City]          NVARCHAR (100) NULL
);


GO

