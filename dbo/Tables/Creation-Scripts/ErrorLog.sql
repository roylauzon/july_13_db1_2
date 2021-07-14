CREATE TABLE [dbo].[ErrorLog] (
    [ErrorLogID]     INT             NOT NULL,
    [ErrorTime]      DATETIME        NOT NULL,
    [UserName]       NVARCHAR (128)  NOT NULL,
    [ErrorNumber]    INT             NOT NULL,
    [ErrorSeverity]  INT             NULL,
    [ErrorState]     INT             NULL,
    [ErrorProcedure] NVARCHAR (126)  NULL,
    [ErrorLine]      INT             NULL,
    [ErrorMessage]   NVARCHAR (4000) NOT NULL
);


GO

ALTER TABLE [dbo].[ErrorLog]
    ADD CONSTRAINT [DF_ErrorLog_ErrorTime] DEFAULT (getdate()) FOR [ErrorTime];


GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'CONSTRAINT', @level2name = N'DF_ErrorLog_ErrorTime';


GO





EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Audit table tracking errors in the the AdventureWorks database that are caught by the CATCH block of a TRY...CATCH construct. Data is inserted by stored procedure dbo.uspLogError when it is executed from inside the CATCH block of a TRY...CATCH construct.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog';


GO



