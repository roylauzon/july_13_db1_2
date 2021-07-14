CREATE TABLE [HumanResources].[EmployeePayHistory] (
    [BusinessEntityID] INT      NOT NULL,
    [RateChangeDate]   DATETIME NOT NULL,
    [Rate]             MONEY    NOT NULL,
    [PayFrequency]     TINYINT  NOT NULL,
    [ModifiedDate]     DATETIME NOT NULL
);


GO

ALTER TABLE [HumanResources].[EmployeePayHistory]
    ADD CONSTRAINT [CK_EmployeePayHistory_PayFrequency] CHECK ([PayFrequency]=(2) OR [PayFrequency]=(1));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [PayFrequency]=(3) OR [PayFrequency]=(2) OR [PayFrequency]=(1)', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_EmployeePayHistory_PayFrequency';


GO





ALTER TABLE [HumanResources].[EmployeePayHistory]
    ADD CONSTRAINT [CK_EmployeePayHistory_Rate] CHECK ([Rate]>=(6.50) AND [Rate]<=(200.00));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Rate] >= (6.50) AND [Rate] <= (200.00)', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_EmployeePayHistory_Rate';


GO





ALTER TABLE [HumanResources].[EmployeePayHistory]
    ADD CONSTRAINT [DF_EmployeePayHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_EmployeePayHistory_ModifiedDate';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee pay history.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory';


GO



