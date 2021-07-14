CREATE TABLE [Production].[ScrapReason] (
    [ScrapReasonID] SMALLINT      NOT NULL,
    [Name]          NVARCHAR (50) NOT NULL,
    [ModifiedDate]  DATETIME      NOT NULL
);


GO

ALTER TABLE [Production].[ScrapReason]
    ADD CONSTRAINT [DF_ScrapReason_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'CONSTRAINT', @level2name = N'DF_ScrapReason_ModifiedDate';


GO





CREATE UNIQUE NONCLUSTERED INDEX [AK_ScrapReason_Name]
    ON [Production].[ScrapReason]([Name] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'INDEX', @level2name = N'AK_ScrapReason_Name';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Manufacturing failure reasons lookup table.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason';


GO



