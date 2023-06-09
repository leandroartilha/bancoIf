USE [ProjetoIf]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/03/2023 23:35:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 20/03/2023 23:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailLogin] [varchar](40) NOT NULL,
	[SenhaLogin] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projeto]    Script Date: 20/03/2023 23:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projeto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeTarefa] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Projeto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarefa]    Script Date: 20/03/2023 23:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarefa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeTarefa] [varchar](50) NOT NULL,
	[DescricaoTarefa] [varchar](200) NULL,
	[UsuarioId] [int] NULL,
	[ProjetoId] [int] NULL,
 CONSTRAINT [PK_Tarefa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/03/2023 23:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeUsuario] [varchar](50) NOT NULL,
	[EmailUsuario] [varchar](50) NOT NULL,
	[SenhaUsuario] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tarefa]  WITH CHECK ADD  CONSTRAINT [FK_Tarefa_Projeto_ProjetoId] FOREIGN KEY([ProjetoId])
REFERENCES [dbo].[Projeto] ([Id])
GO
ALTER TABLE [dbo].[Tarefa] CHECK CONSTRAINT [FK_Tarefa_Projeto_ProjetoId]
GO
ALTER TABLE [dbo].[Tarefa]  WITH CHECK ADD  CONSTRAINT [FK_Tarefa_Usuario_UsuarioId] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Tarefa] CHECK CONSTRAINT [FK_Tarefa_Usuario_UsuarioId]
GO
