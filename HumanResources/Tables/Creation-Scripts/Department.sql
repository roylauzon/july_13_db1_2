CREATE TABLE [HumanResources].[Department] (
    [DepartmentID] SMALLINT      NOT NULL,
    [Name]         NVARCHAR (50) NOT NULL,
    [GroupName]    NVARCHAR (50) NOT NULL,
    [ModifiedDate] DATETIME      NOT NULL
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [AK_Department_Name]
    ON [HumanResources].[Department]([Name] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'INDEX', @level2name = N'AK_Department_Name';


GO





ALTER TABLE [HumanResources].[Department]
    ADD CONSTRAINT [DF_Department_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'CONSTRAINT', @level2name = N'DF_Department_ModifiedDate';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the departments within the Adventure Works Cycles company.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department';


GO



