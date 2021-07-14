CREATE TABLE [Production].[ProductInventory] (
    [ProductID]    INT              NOT NULL,
    [LocationID]   SMALLINT         NOT NULL,
    [Shelf]        NVARCHAR (10)    NOT NULL,
    [Bin]          TINYINT          NOT NULL,
    [Quantity]     SMALLINT         NOT NULL,
    [rowguid]      UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate] DATETIME         NOT NULL
);


GO

ALTER TABLE [Production].[ProductInventory]
    ADD CONSTRAINT [CK_ProductInventory_Bin] CHECK ([Bin]>=(0) AND [Bin]<=(100));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Bin] BETWEEN (0) AND (100)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductInventory_Bin';


GO





ALTER TABLE [Production].[ProductInventory]
    ADD CONSTRAINT [CK_ProductInventory_Shelf] CHECK ([Shelf] like '[A-Za-z]' OR [Shelf]='N/A');


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Shelf] like ''[A-Za-z]'' OR [Shelf]=''N/A''', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductInventory_Shelf';


GO





ALTER TABLE [Production].[ProductInventory]
    ADD CONSTRAINT [DF_ProductInventory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductInventory_ModifiedDate';


GO





ALTER TABLE [Production].[ProductInventory]
    ADD CONSTRAINT [DF_ProductInventory_Quantity] DEFAULT ((0)) FOR [Quantity];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductInventory_Quantity';


GO





ALTER TABLE [Production].[ProductInventory]
    ADD CONSTRAINT [DF_ProductInventory_rowguid] DEFAULT (newid()) FOR [rowguid];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductInventory_rowguid';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product inventory information.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductInventory';


GO



