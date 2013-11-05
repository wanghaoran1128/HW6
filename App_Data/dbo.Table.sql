CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [Birthday] DATE NOT NULL, 
    [Age] INT NOT NULL, 
    [Country] NVARCHAR(50) NOT NULL, 
    [Height] NVARCHAR(50) NOT NULL, 
    [Weight] NVARCHAR(50) NOT NULL, 
    [Number] INT NOT NULL, 
    [Position] NVARCHAR(50) NOT NULL, 
    [Marriage] NVARCHAR(50) NULL, 
    [Education] NVARCHAR(50) NULL, 
    [Hobbies] NVARCHAR(MAX) NULL, 
    [Picture] IMAGE NULL
)
