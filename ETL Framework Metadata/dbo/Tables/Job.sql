CREATE TABLE [dbo].[Job] (
    [Id]      INT          IDENTITY (1, 1) NOT NULL,
    [Name]    VARCHAR (64) NOT NULL,
    [Enabled] BIT          DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PkEtlJob] PRIMARY KEY CLUSTERED ([Id] ASC)
);

