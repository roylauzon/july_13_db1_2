CREATE TABLE [Person].[Person] (
    [BusinessEntityID]      INT              NOT NULL,
    [PersonType]            NCHAR (2)        NOT NULL,
    [NameStyle]             BIT              NOT NULL,
    [Title]                 NVARCHAR (8)     NULL,
    [FirstName]             NVARCHAR (50)    NOT NULL,
    [MiddleName]            NVARCHAR (50)    NULL,
    [LastName]              NVARCHAR (50)    NOT NULL,
    [Suffix]                NVARCHAR (10)    NULL,
    [EmailPromotion]        INT              NOT NULL,
    [AdditionalContactInfo] XML              NULL,
    [Demographics]          XML              NULL,
    [rowguid]               UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate]          DATETIME         NOT NULL
);


GO

ALTER TABLE [Person].[Person]
    ADD CONSTRAINT [CK_Person_EmailPromotion] CHECK ([EmailPromotion]>=(0) AND [EmailPromotion]<=(2));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EmailPromotion] >= (0) AND [EmailPromotion] <= (2)', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'CK_Person_EmailPromotion';


GO





ALTER TABLE [Person].[Person]
    ADD CONSTRAINT [CK_Person_PersonType] CHECK ([PersonType] IS NULL OR (upper([PersonType])='GC' OR upper([PersonType])='SP' OR upper([PersonType])='EM' OR upper([PersonType])='IN' OR upper([PersonType])='VC' OR upper([PersonType])='SC'));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [PersonType] is one of SC, VC, IN, EM or SP.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'CK_Person_PersonType';


GO





ALTER TABLE [Person].[Person]
    ADD CONSTRAINT [DF_Person_EmailPromotion] DEFAULT ((0)) FOR [EmailPromotion];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'DF_Person_EmailPromotion';


GO





ALTER TABLE [Person].[Person]
    ADD CONSTRAINT [DF_Person_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'DF_Person_ModifiedDate';


GO





ALTER TABLE [Person].[Person]
    ADD CONSTRAINT [DF_Person_NameStyle] DEFAULT ((0)) FOR [NameStyle];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'DF_Person_NameStyle';


GO





ALTER TABLE [Person].[Person]
    ADD CONSTRAINT [DF_Person_rowguid] DEFAULT (newid()) FOR [rowguid];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'DF_Person_rowguid';


GO





CREATE UNIQUE NONCLUSTERED INDEX [AK_Person_rowguid]
    ON [Person].[Person]([rowguid] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support replication samples.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'INDEX', @level2name = N'AK_Person_rowguid';


GO





CREATE NONCLUSTERED INDEX [IX_Person_LastName_FirstName_MiddleName]
    ON [Person].[Person]([LastName] ASC, [FirstName] ASC, [MiddleName] ASC);


GO



EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Human beings involved with AdventureWorks: employees, customer contacts, and vendor contacts.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person';


GO



