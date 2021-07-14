CREATE TABLE [Production].[Document] (
    [DocumentNode]    [sys].[hierarchyid] NOT NULL,
    [DocumentLevel]   SMALLINT            NULL,
    [Title]           NVARCHAR (50)       NOT NULL,
    [Owner]           INT                 NOT NULL,
    [FolderFlag]      BIT                 NOT NULL,
    [FileName]        NVARCHAR (400)      NOT NULL,
    [FileExtension]   NVARCHAR (8)        NOT NULL,
    [Revision]        NCHAR (5)           NOT NULL,
    [ChangeNumber]    INT                 NOT NULL,
    [Status]          TINYINT             NOT NULL,
    [DocumentSummary] NVARCHAR (MAX)      NULL,
    [Document]        VARBINARY (MAX)     NULL,
    [rowguid]         UNIQUEIDENTIFIER    NOT NULL,
    [ModifiedDate]    DATETIME            NOT NULL
);


GO

ALTER TABLE [Production].[Document]
    ADD CONSTRAINT [CK_Document_Status] CHECK ([Status]>=(1) AND [Status]<=(3));


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Status] BETWEEN (1) AND (3)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'CK_Document_Status';


GO





ALTER TABLE [Production].[Document]
    ADD CONSTRAINT [DF_Document_ChangeNumber] DEFAULT ((0)) FOR [ChangeNumber];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'DF_Document_ChangeNumber';


GO





ALTER TABLE [Production].[Document]
    ADD CONSTRAINT [DF_Document_FolderFlag] DEFAULT ((0)) FOR [FolderFlag];


GO



ALTER TABLE [Production].[Document]
    ADD CONSTRAINT [DF_Document_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'DF_Document_ModifiedDate';


GO





ALTER TABLE [Production].[Document]
    ADD CONSTRAINT [DF_Document_rowguid] DEFAULT (newid()) FOR [rowguid];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'DF_Document_rowguid';


GO





CREATE UNIQUE NONCLUSTERED INDEX [AK_Document_DocumentLevel_DocumentNode]
    ON [Production].[Document]([DocumentLevel] ASC, [DocumentNode] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'INDEX', @level2name = N'AK_Document_DocumentLevel_DocumentNode';


GO





CREATE UNIQUE NONCLUSTERED INDEX [AK_Document_rowguid]
    ON [Production].[Document]([rowguid] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index. Used to support FileStream.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'INDEX', @level2name = N'AK_Document_rowguid';


GO





CREATE NONCLUSTERED INDEX [IX_Document_FileName_Revision]
    ON [Production].[Document]([FileName] ASC, [Revision] ASC);


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'INDEX', @level2name = N'IX_Document_FileName_Revision';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product maintenance documents.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document';


GO



