SET NOCOUNT ON
GO

MERGE INTO [dbo].[Users] AS [Target]
USING (VALUES

 (N'admin@clarika.com.ar',N'admin@clarika.com.ar',N'Admin', 'Clarika',N'yUfiuWRdTtKtS4w8J0e0sw==:+4NPkCI0Ndb8cTjm8thi2wOnD3D2prXmsKdci26B3/o=') 
 --Admin2030
 
) AS [Source] ([UserName],[Email],[FirstName],[LastName],[PasswordHash]) 

ON ([Target].[UserName] = [Source].[UserName])
WHEN NOT MATCHED BY TARGET THEN
	INSERT([UserName],[Email],[FirstName],[LastName],[PasswordHash])
	VALUES([Source].[UserName],[Source].[Email],[Source].[FirstName],[Source].[LastName],[Source].[PasswordHash]);
GO

SET NOCOUNT OFF

GO
