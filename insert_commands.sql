CREATE TABLE [dbo].[Users]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(MAX) NOT NULL, 
    [Email] VARCHAR(MAX) NOT NULL, 
    [Password] VARCHAR(MAX) NOT NULL
)

SET IDENTITY_INSERT [dbo].[Users] ON
INSERT INTO [dbo].[Users] ([Id], [Name], [Email], [Password]) VALUES (1, N'Nikhil Peter Raj', N'nikhilpeter93@gmail.com', N'abcABC123')
INSERT INTO [dbo].[Users] ([Id], [Name], [Email], [Password]) VALUES (2, N'Ankit Aggarwal', N'ankit@ankit.im', N'qweQWE123')
SET IDENTITY_INSERT [dbo].[Users] OFF

