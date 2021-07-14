CREATE TABLE [Person].[PhoneNumberType] (
    [PhoneNumberTypeID] INT           NOT NULL,
    [Name]              NVARCHAR (50) NOT NULL,
    [ModifiedDate]      DATETIME      NOT NULL
);


GO

ALTER TABLE [Person].[PhoneNumberType]
    ADD CONSTRAINT [DF_PhoneNumberType_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PhoneNumberType', @level2type = N'CONSTRAINT', @level2name = N'DF_PhoneNumberType_ModifiedDate';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Type of phone number of a person.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'PhoneNumberType';


GO



