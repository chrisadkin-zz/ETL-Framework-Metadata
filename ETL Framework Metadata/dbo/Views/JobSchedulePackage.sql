



CREATE VIEW [dbo].[JobSchedulePackage] AS
SELECT          chan1.PackageName                         AS PackageName_Channel1
		       ,chan1.PackageId                           AS PackageId_Channel1
		       ,ISNULL(IntParameter_Channel1, -1)         AS IntParameter_Channel1
		       ,ISNULL(VarcharParameter_Channel1, 'XYZ')  AS VarcharParameter_Channel1
			   ,chan1.Project                             AS Project_Channel1
			   ,chan1.Folder                              AS Folder_Channel1
			   ,chan1.Use32BitRunTime                     AS Use32BitRunTime_Channel1
			   ,chan1.CatalogLoggingLevel                 AS CatalogLoggingLevel_Channel1
		       /*
			    * Channel 2 child packages
			    */
		       ,CASE chan2.Enabled
			        WHEN 1
				        THEN ISNULL(chan2.PackageName, 'Disable Channel') 
			        ELSE 'Disable Channel'
			    END	                                      AS PackageName_Channel2
		       ,ISNULL(IntParameter_Channel2, -1)         AS IntParameter_Channel2
		       ,ISNULL(VarcharParameter_Channel2, 'XYZ')  AS VarcharParameter_Channel2
		       ,CASE chan2.Enabled
			        WHEN 1
				        THEN chan2.PackageId 
			        ELSE 0
			    END	                                      AS PackageId_Channel2
			   ,ISNULL(chan2.Project, 'XYZ')              AS Project_Channel2
			   ,ISNULL(chan2.Folder, 'XYZ')               AS Folder_Channel2
			   ,ISNULL(chan2.Use32BitRunTime, 0)          AS Use32BitRunTime_Channel2
			   ,ISNULL(chan2.CatalogLoggingLevel, 0)      AS CatalogLoggingLevel_Channel2
			   /*
			    * Channel 3 child packages 
			    */
			   ,CASE chan3.Enabled
				   WHEN 1
					   THEN ISNULL(chan3.PackageName, 'Disable Channel') 
				   ELSE 'Disable Channel'
 			    END	                                      AS PackageName_Channel3
			   ,ISNULL(IntParameter_Channel3, -1)         AS IntParameter_Channel3
			   ,ISNULL(VarcharParameter_Channel3, 'XYZ')  AS VarcharParameter_Channel3
			   ,CASE chan3.Enabled
				    WHEN 1
					    THEN chan3.PackageId 
				    ELSE 0
			    END	                                      AS PackageId_Channel3
			   ,ISNULL(chan3.Project, 'XYZ')              AS Project_Channel3
			   ,ISNULL(chan3.Folder, 'XYZ')               AS Folder_Channel3
  			   ,ISNULL(chan3.Use32BitRunTime, 0)          AS Use32BitRunTime_Channel3
			   ,ISNULL(chan3.CatalogLoggingLevel, 0)      AS CatalogLoggingLevel_Channel3
			   /*
			    * Channel 4 child packages
			    */
			   ,CASE chan4.Enabled
				    WHEN 1
					    THEN ISNULL(chan4.PackageName, 'Disable Channel') 
				    ELSE 'Disable Channel'
			    END	                                      AS PackageName_Channel4
			   ,ISNULL(IntParameter_Channel4, -1)         AS IntParameter_Channel4
			   ,ISNULL(VarcharParameter_Channel4, 'XYZ')  AS VarcharParameter_Channel4
			   ,CASE chan4.Enabled
				    WHEN 1
					    THEN chan4.PackageId 
				    ELSE 0
			    END	                                      AS PackageId_Channel4
			   ,ISNULL(chan4.Project, 'XYZ')              AS Project_Channel4
			   ,ISNULL(chan4.Folder, 'XYZ')               AS Folder_Channel4
   			   ,ISNULL(chan4.Use32BitRunTime, 0)          AS Use32BitRunTime_Channel4
			   ,ISNULL(chan4.CatalogLoggingLevel, 0)      AS CatalogLoggingLevel_Channel4
			   /*
			    * Channel 5 child packages 
				*/
			   ,CASE chan5.Enabled
				    WHEN 1
					    THEN ISNULL(chan5.PackageName, 'Disable Channel') 
				    ELSE 'Disable Channel'
			    END	                                      AS PackageName_Channel5
			   ,ISNULL(IntParameter_Channel5, -1)         AS IntParameter_Channel5
			   ,ISNULL(VarcharParameter_Channel5, 'XYZ')  AS VarcharParameter_Channel5
			   ,CASE chan5.Enabled
				    WHEN 1
					    THEN chan5.PackageId 
				    ELSE 0
			    END	                                      AS PackageId_Channel5
		       ,ISNULL(chan5.Project, 'XYZ')              AS Project_Channel5
			   ,ISNULL(chan5.Folder, 'XYZ')               AS Folder_Channel5
   			   ,ISNULL(chan5.Use32BitRunTime, 0)          AS Use32BitRunTime_Channel5
			   ,ISNULL(chan5.CatalogLoggingLevel, 0)      AS CatalogLoggingLevel_Channel5
			   /*
			    * Channel 6 child packages
				*/
			   ,CASE chan6.Enabled
				    WHEN 1
				  	    THEN ISNULL(chan6.PackageName, 'Disable Channel') 
				    ELSE 'Disable Channel' 
			    END	                                      AS PackageName_Channel6
			   ,ISNULL(IntParameter_Channel6, -1)         AS IntParameter_Channel6
			   ,ISNULL(VarcharParameter_Channel6, 'XYZ')  AS VarcharParameter_Channel6
			   ,CASE chan6.Enabled
				    WHEN 1
					    THEN chan6.PackageId                                           
				    ELSE 0
			    END	                                      AS PackageId_Channel6
		       ,ISNULL(chan6.Project, 'XYZ')              AS Project_Channel6
			   ,ISNULL(chan6.Folder, 'XYZ')               AS Folder_Channel6
			   ,ISNULL(chan6.Use32BitRunTime, 0)          AS Use32BitRunTime_Channel6
			   ,ISNULL(chan6.CatalogLoggingLevel, 0)      AS CatalogLoggingLevel_Channel6
			   /*
			    * Channel 7 child packages
				*/
			   ,CASE chan7.Enabled
				   WHEN 1
					   THEN ISNULL(chan7.PackageName, 'Disable Channel') 
				   ELSE 'Disable Channel'
			   END	                                      AS PackageName_Channel7
			  ,ISNULL(IntParameter_Channel7, -1)          AS IntParameter_Channel7
			  ,ISNULL(VarcharParameter_Channel7, 'XYZ')   AS VarcharParameter_Channel7
			  ,CASE chan7.Enabled
				   WHEN 1
					   THEN chan7.PackageId                                           
				   ELSE 0
			   END	                                      AS PackageId_Channel7
 		      ,ISNULL(chan7.Project, 'XYZ')               AS Project_Channel7
			  ,ISNULL(chan7.Folder, 'XYZ')                AS Folder_Channel7
			  ,ISNULL(chan7.Use32BitRunTime, 0)           AS Use32BitRunTime_Channel7
			  ,ISNULL(chan7.CatalogLoggingLevel, 0)       AS CatalogLoggingLevel_Channel7
			   /*
			    * Channel 8 child packages
				*/
			  ,CASE chan8.Enabled
				  WHEN 1
					  THEN ISNULL(chan8.PackageName, 'Disable Channel') 
				  ELSE 'Disable Channel'
			  END	                                      AS PackageName_Channel8
			  ,ISNULL(IntParameter_Channel8, -1)          AS IntParameter_Channel8
			  ,ISNULL(VarcharParameter_Channel8, 'XYZ')   AS VarcharParameter_Channel8
			  ,CASE chan8.Enabled
				   WHEN 1
					   THEN chan8.PackageId                                           
				   ELSE 0
			   END	                                      AS PackageId_Channel8
 		      ,ISNULL(chan8.Project, 'XYZ')               AS Project_Channel8
			  ,ISNULL(chan8.Folder, 'XYZ')                AS Folder_Channel8
			  ,ISNULL(chan8.Use32BitRunTime, 0)           AS Use32BitRunTime_Channel8     
              ,ISNULL(chan8.CatalogLoggingLevel, 0)       AS CatalogLoggingLevel_Channel8 
              ,pro.ExecutionOrder       
			  ,j.Name                                     AS JobName
	FROM      Job j
	JOIN      JobPackageSchedule pro
	ON        pro.JobId = j.Id
	JOIN      PackageProject chan1
	ON        pro.PackageId_Channel1 = chan1.PackageId
	LEFT JOIN PackageProject chan2
	ON        pro.PackageId_Channel2 = chan2.PackageId
	LEFT JOIN PackageProject chan3
	ON        pro.PackageId_Channel3 = chan3.PackageId
	LEFT JOIN PackageProject chan4
	ON        pro.PackageId_Channel4 = chan4.PackageId
	LEFT JOIN PackageProject chan5
	ON        pro.PackageId_Channel5 = chan5.PackageId
	LEFT JOIN PackageProject chan6
	ON        pro.PackageId_Channel6 = chan6.PackageId
	LEFT JOIN PackageProject chan7
	ON        pro.PackageId_Channel7 = chan7.PackageId
	LEFT JOIN PackageProject chan8
	ON        pro.PackageId_Channel8 = chan8.PackageId
	AND       chan1.[Enabled]        = 1
	AND       j.[Enabled]            = 1                   
                         




