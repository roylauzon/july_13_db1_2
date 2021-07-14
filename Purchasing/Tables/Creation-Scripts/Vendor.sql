CREATE TABLE [Purchasing].[Vendor] (
    [BusinessEntityID]        INT             NOT NULL,
    [AccountNumber]           NVARCHAR (15)   NOT NULL,
    [Name]                    NVARCHAR (50)   NOT NULL,
    [CreditRating]            TINYINT         NOT NULL,
    [PreferredVendorStatus]   BIT             NOT NULL,
    [ActiveFlag]              BIT             NOT NULL,
    [PurchasingWebServiceURL] NVARCHAR (1024) NULL,
    [ModifiedDate]            DATETIME        NOT NULL
);


GO

ALTER TABLE [Purchasing].[Vendor]
    ADD CONSTRAINT [CK_Vendor_CreditRating] CHECK ([CreditRating]>=(1) AND [CreditRating]<=(5));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [CreditRating] BETWEEN (1) AND (5)', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'CK_Vendor_CreditRating';


GO





ALTER TABLE [Purchasing].[Vendor]
    ADD CONSTRAINT [DF_Vendor_ActiveFlag] DEFAULT ((1)) FOR [ActiveFlag];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'DF_Vendor_ActiveFlag';


GO





ALTER TABLE [Purchasing].[Vendor]
    ADD CONSTRAINT [DF_Vendor_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'DF_Vendor_ModifiedDate';


GO





ALTER TABLE [Purchasing].[Vendor]
    ADD CONSTRAINT [DF_Vendor_PreferredVendorStatus] DEFAULT ((1)) FOR [PreferredVendorStatus];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'DF_Vendor_PreferredVendorStatus';


GO





CREATE UNIQUE NONCLUSTERED INDEX [AK_Vendor_AccountNumber]
    ON [Purchasing].[Vendor]([AccountNumber] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'INDEX', @level2name = N'AK_Vendor_AccountNumber';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Companies from whom Adventure Works Cycles purchases parts or other goods.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor';


GO



