CREATE TABLE [Production].[Product] (
    [ProductID]             INT              NOT NULL,
    [Name]                  NVARCHAR (50)    NOT NULL,
    [ProductNumber]         NVARCHAR (25)    NOT NULL,
    [MakeFlag]              BIT              NOT NULL,
    [FinishedGoodsFlag]     BIT              NOT NULL,
    [Color]                 NVARCHAR (15)    NULL,
    [SafetyStockLevel]      SMALLINT         NOT NULL,
    [ReorderPoint]          SMALLINT         NOT NULL,
    [StandardCost]          MONEY            NOT NULL,
    [ListPrice]             MONEY            NOT NULL,
    [Size]                  NVARCHAR (5)     NULL,
    [SizeUnitMeasureCode]   NCHAR (3)        NULL,
    [WeightUnitMeasureCode] NCHAR (3)        NULL,
    [Weight]                DECIMAL (8, 2)   NULL,
    [DaysToManufacture]     INT              NOT NULL,
    [ProductLine]           NCHAR (2)        NULL,
    [Class]                 NCHAR (2)        NULL,
    [Style]                 NCHAR (2)        NULL,
    [ProductSubcategoryID]  INT              NULL,
    [ProductModelID]        INT              NULL,
    [SellStartDate]         DATETIME         NOT NULL,
    [SellEndDate]           DATETIME         NULL,
    [DiscontinuedDate]      DATETIME         NULL,
    [rowguid]               UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate]          DATETIME         NOT NULL
);


GO

ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_Class] CHECK (upper([Class])='H' OR upper([Class])='M' OR upper([Class])='L' OR [Class] IS NULL);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Class]=''h'' OR [Class]=''m'' OR [Class]=''l'' OR [Class]=''H'' OR [Class]=''M'' OR [Class]=''L'' OR [Class] IS NULL', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_Class';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_DaysToManufacture] CHECK ([DaysToManufacture]>=(0));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [DaysToManufacture] >= (0)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_DaysToManufacture';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_ListPrice] CHECK ([ListPrice]>=(0.00));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ListPrice] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_ListPrice';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_ProductLine] CHECK (upper([ProductLine])='R' OR upper([ProductLine])='M' OR upper([ProductLine])='T' OR upper([ProductLine])='S' OR [ProductLine] IS NULL);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ProductLine]=''r'' OR [ProductLine]=''m'' OR [ProductLine]=''t'' OR [ProductLine]=''s'' OR [ProductLine]=''R'' OR [ProductLine]=''M'' OR [ProductLine]=''T'' OR [ProductLine]=''S'' OR [ProductLine] IS NULL', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_ProductLine';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_ReorderPoint] CHECK ([ReorderPoint]>(0));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ReorderPoint] > (0)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_ReorderPoint';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_SafetyStockLevel] CHECK ([SafetyStockLevel]>(0));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SafetyStockLevel] > (0)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_SafetyStockLevel';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_SellEndDate] CHECK ([SellEndDate]>=[SellStartDate] OR [SellEndDate] IS NULL);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SellEndDate] >= [SellStartDate] OR [SellEndDate] IS NULL', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_SellEndDate';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_StandardCost] CHECK ([StandardCost]>=(0.00));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SafetyStockLevel] > (0)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_StandardCost';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_Style] CHECK (upper([Style])='U' OR upper([Style])='M' OR upper([Style])='W' OR [Style] IS NULL);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Style]=''u'' OR [Style]=''m'' OR [Style]=''w'' OR [Style]=''U'' OR [Style]=''M'' OR [Style]=''W'' OR [Style] IS NULL', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_Style';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_Weight] CHECK ([Weight]>(0.00));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Weight] > (0.00)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_Weight';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [DF_Product_FinishedGoodsFlag] DEFAULT ((1)) FOR [FinishedGoodsFlag];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of  1', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'DF_Product_FinishedGoodsFlag';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [DF_Product_MakeFlag] DEFAULT ((1)) FOR [MakeFlag];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of  1', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'DF_Product_MakeFlag';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [DF_Product_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'DF_Product_ModifiedDate';


GO





ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [DF_Product_rowguid] DEFAULT (newid()) FOR [rowguid];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'DF_Product_rowguid';


GO





CREATE UNIQUE NONCLUSTERED INDEX [AK_Product_Name]
    ON [Production].[Product]([Name] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'AK_Product_Name';


GO





CREATE UNIQUE NONCLUSTERED INDEX [AK_Product_ProductNumber]
    ON [Production].[Product]([ProductNumber] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'AK_Product_ProductNumber';


GO





CREATE UNIQUE NONCLUSTERED INDEX [AK_Product_rowguid]
    ON [Production].[Product]([rowguid] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'AK_Product_rowguid';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Products sold or used in the manfacturing of sold products.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product';


GO



