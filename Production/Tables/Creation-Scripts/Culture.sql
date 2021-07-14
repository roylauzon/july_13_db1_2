CREATE TABLE [Production].[Culture] (
    [CultureID]    NCHAR (6)     NOT NULL,
    [Name]         NVARCHAR (50) NOT NULL,
    [ModifiedDate] DATETIME      NOT NULL
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [AK_Culture_Name]
    ON [Production].[Culture]([Name] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'INDEX', @level2name = N'AK_Culture_Name';


GO





ALTER TABLE [Production].[Culture]
    ADD CONSTRAINT [DF_Culture_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'CONSTRAINT', @level2name = N'DF_Culture_ModifiedDate';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the languages in which some AdventureWorks data is stored.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture';


GO



