CREATE TABLE [dbo].[Package] (
    [Id]                  INT            IDENTITY (1, 1) NOT NULL,
    [Name]                NVARCHAR (260) NULL,
    [Enabled]             BIT            NOT NULL,
    [ProjectId]           INT            NOT NULL,
    [Use32BitRunTime]     BIT            DEFAULT ((0)) NOT NULL,
    [CatalogLoggingLevel] INT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PkEtlPackage] PRIMARY KEY CLUSTERED ([Id] ASC),
    CHECK ([CatalogLoggingLevel]=(3) OR [CatalogLoggingLevel]=(2) OR [CatalogLoggingLevel]=(1) OR [CatalogLoggingLevel]=(0)),
    CONSTRAINT [FkProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Project] ([Id])
);

