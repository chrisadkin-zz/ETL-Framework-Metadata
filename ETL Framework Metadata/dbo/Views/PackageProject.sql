





CREATE VIEW [dbo].[PackageProject] AS
SELECT  pack.Id     AS PackageId
       ,pack.Name   AS PackageName
       ,proj.Name   AS Project
       ,proj.Folder AS Folder
	   ,pack.[Enabled]
	   ,pack.Use32BitRunTime
	   ,pack.CatalogLoggingLevel
FROM   Package pack
JOIN   Project proj
ON     pack.ProjectId = proj.Id