CREATE TABLE [dbo].[Dim_Organizacional]
(
	[Cod_Filho] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Filho] NVARCHAR(200) NULL, 
    [cod_Pai] NVARCHAR(50) NULL, 
    [Esquerda] INT NULL, 
    [Direta] INT NULL, 
    [Nivel] INT NULL, 
    CONSTRAINT [FK_Dim_Organizacional_Dim_Organizacional] FOREIGN KEY ([Cod_Pai]) REFERENCES [Dim_Organizacional]([Cod_Filho])
)
