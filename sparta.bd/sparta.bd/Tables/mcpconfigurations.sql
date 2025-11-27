CREATE TABLE [dbo].[mcpconfigurations]
(
    [Id] INT IDENTITY(1,1) NOT NULL,
    [Configurations] NVARCHAR(MAX) NULL,
    
    CONSTRAINT [PK_mcpconfigurations] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

