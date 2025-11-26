SET NOCOUNT ON
GO

MERGE INTO [dbo].[Users] AS [Target]
USING (VALUES

 (N'admin@clarika.com.ar',N'admin@clarika.com.ar',N'Admin', 'Clarika',N'$2b$10$afbB1C2YSwSwTvgi1Gfmw.GMS238SjWHl3rURRSd7I9KzZeUFlC6u') 
 
) AS [Source] ([UserName],[Email],[FirstName],[LastName],[PasswordHash]) 

ON ([Target].[UserName] = [Source].[UserName])
WHEN NOT MATCHED BY TARGET THEN
	INSERT([UserName],[Email],[FirstName],[LastName],[PasswordHash])
	VALUES([Source].[UserName],[Source].[Email],[Source].[FirstName],[Source].[LastName],[Source].[PasswordHash]);
GO

SET NOCOUNT OFF

GO
