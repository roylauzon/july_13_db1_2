CREATE TABLE [Production].[Location] (
    [LocationID]   SMALLINT       NOT NULL,
    [Name]         NVARCHAR (50)  NOT NULL,
    [CostRate]     SMALLMONEY     NOT NULL,
    [Availability] DECIMAL (8, 2) NOT NULL,
    [ModifiedDate] DATETIME       NOT NULL
);


GO

ALTER TABLE [Production].[Location]
    ADD CONSTRAINT [CK_Location_Availability] CHECK ([Availability]>=(0.00));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Availability] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'CK_Location_Availability';


GO





ALTER TABLE [Production].[Location]
    ADD CONSTRAINT [CK_Location_CostRate] CHECK ([CostRate]>=(0.00));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [CostRate] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'CK_Location_CostRate';


GO





ALTER TABLE [Production].[Location]
    ADD CONSTRAINT [DF_Location_Availability] DEFAULT ((0.00)) FOR [Availability];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.00', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'DF_Location_Availability';


GO





ALTER TABLE [Production].[Location]
    ADD CONSTRAINT [DF_Location_CostRate] DEFAULT ((0.00)) FOR [CostRate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'DF_Location_CostRate';


GO





ALTER TABLE [Production].[Location]
    ADD CONSTRAINT [DF_Location_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'DF_Location_ModifiedDate';


GO





CREATE UNIQUE NONCLUSTERED INDEX [AK_Location_Name]
    ON [Production].[Location]([Name] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'INDEX', @level2name = N'AK_Location_Name';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product inventory and manufacturing locations.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location';


GO



