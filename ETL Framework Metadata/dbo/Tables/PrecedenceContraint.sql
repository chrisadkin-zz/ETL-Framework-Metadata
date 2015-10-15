CREATE TABLE [dbo].[PrecedenceContraint] (
    [PackageId]          INT NOT NULL,
    [LoadedData]         BIT NOT NULL,
    [UpdatedData]        BIT NOT NULL,
    [DeletedData]        BIT NOT NULL,
    [RejectedData]       BIT NOT NULL,
    [DependantPackageId] INT NOT NULL,
    CONSTRAINT [PkEtlPrecedenceContraint] PRIMARY KEY CLUSTERED ([PackageId] ASC),
    CONSTRAINT [FkDependantPackageId] FOREIGN KEY ([DependantPackageId]) REFERENCES [dbo].[Package] ([Id]),
    CONSTRAINT [FkPackageId] FOREIGN KEY ([PackageId]) REFERENCES [dbo].[Package] ([Id])
);

