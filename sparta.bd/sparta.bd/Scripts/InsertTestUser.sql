-- Script para insertar un usuario de prueba
-- La contraseña es: Admin123!
-- Hash generado usando el método HashPassword de AuthService

-- Nota: Este hash es para la contraseña "Admin123!"
-- Para generar un nuevo hash, ejecuta el método AuthService.HashPassword en el backend

INSERT INTO [dbo].[Usuario] 
    ([Username], [Email], [PasswordHash], [FirstName], [LastName], [IsActive], [CreatedAt])
VALUES 
    ('admin', 'admin@sparta.com', 'YOUR_PASSWORD_HASH_HERE', 'Administrator', 'SPARTA', 1, GETDATE());

-- Para obtener el hash correcto, puedes crear un endpoint temporal en el backend
-- o usar el siguiente comando en C#:
-- var hash = AuthService.HashPassword("Admin123!");

