CREATE TABLE [Production].[ProductProductPhoto] (
    [ProductID]      INT      NOT NULL,
    [ProductPhotoID] INT      NOT NULL,
    [Primary]        BIT      NOT NULL,
    [ModifiedDate]   DATETIME NOT NULL
);


GO

ALTER TABLE [Production].[ProductProductPhoto]
    ADD CONSTRAINT [DF_ProductProductPhoto_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductProductPhoto_ModifiedDate';


GO





ALTER TABLE [Production].[ProductProductPhoto]
    ADD CONSTRAINT [DF_ProductProductPhoto_Primary] DEFAULT ((0)) FOR [Primary];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0 (FALSE)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductProductPhoto_Primary';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping products and product photos.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto';


GO



