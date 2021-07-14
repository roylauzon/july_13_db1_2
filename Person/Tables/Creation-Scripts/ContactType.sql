CREATE TABLE [Person].[ContactType] (
    [ContactTypeID] INT           NOT NULL,
    [Name]          NVARCHAR (50) NOT NULL,
    [ModifiedDate]  DATETIME      NOT NULL
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [AK_ContactType_Name]
    ON [Person].[ContactType]([Name] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'INDEX', @level2name = N'AK_ContactType_Name';


GO





ALTER TABLE [Person].[ContactType]
    ADD CONSTRAINT [DF_ContactType_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'CONSTRAINT', @level2name = N'DF_ContactType_ModifiedDate';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the types of business entity contacts.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType';


GO



