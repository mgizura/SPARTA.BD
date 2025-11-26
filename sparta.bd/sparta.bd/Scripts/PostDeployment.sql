/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------

Script to create default admin user if it doesn't exist
Username: admin@clarika.com.ar
Password: Admin
*/

-- Create default admin user if it doesn't exist
-- To get the password hash, call the API endpoint: POST /api/User/hash-password
-- Body: {"password": "Admin"}
-- Then replace the PLACEHOLDER_HASH_HERE below with the returned hash


:r .\post\users.sql
