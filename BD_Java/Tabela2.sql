USE [Viagem]
GO

/****** Object:  Table [Cadastro].[Cliente]    Script Date: 31/08/2022 19:19:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Cadastro].[Cliente](
	[Id_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[Id_Pessoa] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Cadastro].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Pessoa] FOREIGN KEY([Id_Cliente])
REFERENCES [Cadastro].[Cliente] ([Id_Cliente])
GO

ALTER TABLE [Cadastro].[Cliente] CHECK CONSTRAINT [FK_Cliente_Pessoa]
GO


