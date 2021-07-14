CREATE TABLE [Production].[Illustration] (
    [IllustrationID] INT      NOT NULL,
    [Diagram]        XML      NULL,
    [ModifiedDate]   DATETIME NOT NULL
);


GO

ALTER TABLE [Production].[Illustration]
    ADD CONSTRAINT [DF_Illustration_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration', @level2type = N'CONSTRAINT', @level2name = N'DF_Illustration_ModifiedDate';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bicycle assembly diagrams.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration';


GO



