CREATE TABLE [Production].[ProductListPriceHistory] (
    [ProductID]    INT      NOT NULL,
    [StartDate]    DATETIME NOT NULL,
    [EndDate]      DATETIME NULL,
    [ListPrice]    MONEY    NOT NULL,
    [ModifiedDate] DATETIME NOT NULL
);


GO

ALTER TABLE [Production].[ProductListPriceHistory]
    ADD CONSTRAINT [CK_ProductListPriceHistory_EndDate] CHECK ([EndDate]>=[StartDate] OR [EndDate] IS NULL);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductListPriceHistory_EndDate';


GO





ALTER TABLE [Production].[ProductListPriceHistory]
    ADD CONSTRAINT [CK_ProductListPriceHistory_ListPrice] CHECK ([ListPrice]>(0.00));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ListPrice] > (0.00)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductListPriceHistory_ListPrice';


GO





ALTER TABLE [Production].[ProductListPriceHistory]
    ADD CONSTRAINT [DF_ProductListPriceHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductListPriceHistory_ModifiedDate';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Changes in the list price of a product over time.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory';


GO



