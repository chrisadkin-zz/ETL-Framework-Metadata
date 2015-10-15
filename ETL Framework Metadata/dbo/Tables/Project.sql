CREATE TABLE [dbo].[Project] (
    [Id]     INT            IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (128) NOT NULL,
    [Folder] NVARCHAR (128) NOT NULL,
    CONSTRAINT [PkProjectId] PRIMARY KEY CLUSTERED ([Id] ASC)
);

