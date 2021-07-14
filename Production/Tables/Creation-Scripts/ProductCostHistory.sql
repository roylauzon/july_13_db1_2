CREATE TABLE [Production].[ProductCostHistory] (
    [ProductID]    INT      NOT NULL,
    [StartDate]    DATETIME NOT NULL,
    [EndDate]      DATETIME NULL,
    [StandardCost] MONEY    NOT NULL,
    [ModifiedDate] DATETIME NOT NULL
);


GO

ALTER TABLE [Production].[ProductCostHistory]
    ADD CONSTRAINT [CK_ProductCostHistory_EndDate] CHECK ([EndDate]>=[StartDate] OR [EndDate] IS NULL);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductCostHistory_EndDate';


GO





ALTER TABLE [Production].[ProductCostHistory]
    ADD CONSTRAINT [CK_ProductCostHistory_StandardCost] CHECK ([StandardCost]>=(0.00));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [StandardCost] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductCostHistory_StandardCost';


GO





ALTER TABLE [Production].[ProductCostHistory]
    ADD CONSTRAINT [DF_ProductCostHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductCostHistory_ModifiedDate';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Changes in the cost of a product over time.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory';


GO



