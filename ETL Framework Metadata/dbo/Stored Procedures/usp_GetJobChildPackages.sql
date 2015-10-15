-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetJobChildPackages] @JobName varchar(64)
AS
BEGIN
	SET NOCOUNT ON;

    SELECT      chan1.PackageName                                AS PackageName_Channel1
		       ,chan1.PackageId                                  AS PackageId_Channel1
		       ,ISNULL(IntParameter_Channel1, -1)         AS IntParameter_Channel1
		       ,ISNULL(VarcharParameter_Channel1, 'XYZ')  AS VarcharParameter_Channel1
			   ,chan1.Project
			   ,chan1.Folder
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
			   ,chan2.Project
			   ,chan2.Folder
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
			   ,chan3.Project
			   ,chan3.Folder
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
			   ,chan4.Project
			   ,chan4.Folder
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
		       ,chan5.Project
			   ,chan5.Folder
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
		       ,chan6.Project
			   ,chan6.Folder
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
 		      ,chan5.Project
			  ,chan5.Folder                                      
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
              ,pro.ExecutionOrder
 		      ,chan8.Project
			  ,chan8.Folder                                      
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
	WHERE     j.Name                 = @JobName
	AND       chan1.[Enabled]        = 1
	AND       j.[Enabled]            = 1
	ORDER BY  pro.ExecutionOrder ASC
END;



