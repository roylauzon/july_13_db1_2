CREATE TABLE [HumanResources].[JobCandidate] (
    [JobCandidateID]   INT      NOT NULL,
    [BusinessEntityID] INT      NULL,
    [Resume]           XML      NULL,
    [ModifiedDate]     DATETIME NOT NULL
);


GO

ALTER TABLE [HumanResources].[JobCandidate]
    ADD CONSTRAINT [DF_JobCandidate_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'CONSTRAINT', @level2name = N'DF_JobCandidate_ModifiedDate';


GO





CREATE NONCLUSTERED INDEX [IX_JobCandidate_BusinessEntityID]
    ON [HumanResources].[JobCandidate]([BusinessEntityID] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'INDEX', @level2name = N'IX_JobCandidate_BusinessEntityID';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Résumés submitted to Human Resources by job applicants.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate';


GO



