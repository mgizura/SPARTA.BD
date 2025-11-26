CREATE TABLE [dbo].[Usuario] (
    [Id] INT IDENTITY(1,1) PRIMARY KEY,
    [Username] NVARCHAR(100) NOT NULL UNIQUE,
    [Email] NVARCHAR(255) NOT NULL UNIQUE,
    [PasswordHash] NVARCHAR(500) NOT NULL,
    [FirstName] NVARCHAR(200) NULL,
    [LastName] NVARCHAR(200) NULL,
    [IsActive] BIT NOT NULL DEFAULT 1,
    [CreatedAt] DATETIME2 NOT NULL DEFAULT GETDATE(),
    [UpdatedAt] DATETIME2 NULL
);

CREATE INDEX IX_Usuario_Username ON [dbo].[Usuario]([Username]);
CREATE INDEX IX_Usuario_Email ON [dbo].[Usuario]([Email]);
