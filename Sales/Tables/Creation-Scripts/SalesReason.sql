CREATE TABLE [Sales].[SalesReason] (
    [SalesReasonID] INT           NOT NULL,
    [Name]          NVARCHAR (50) NOT NULL,
    [ReasonType]    NVARCHAR (50) NOT NULL,
    [ModifiedDate]  DATETIME      NOT NULL
);


GO

ALTER TABLE [Sales].[SalesReason]
    ADD CONSTRAINT [DF_SalesReason_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesReason', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesReason_ModifiedDate';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table of customer purchase reasons.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesReason';


GO



