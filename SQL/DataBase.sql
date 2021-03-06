USE [master]
GO
/****** Object:  Database [BaseDatosRestaurante]    Script Date: 17/06/2017 16:09:12 ******/
CREATE DATABASE [BaseDatosRestaurante]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BaseDatosRestaurante', FILENAME = N'C:\Estudiantes\Data\BaseDatosRestaurante.mdf' , SIZE = 22080KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'BaseDatosRestaurante_log', FILENAME = N'C:\Estudiantes\Log\BaseDatosRestaurante_log.ldf' , SIZE = 20096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BaseDatosRestaurante] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BaseDatosRestaurante].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BaseDatosRestaurante] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET ARITHABORT OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BaseDatosRestaurante] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BaseDatosRestaurante] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BaseDatosRestaurante] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BaseDatosRestaurante] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET RECOVERY FULL 
GO
ALTER DATABASE [BaseDatosRestaurante] SET  MULTI_USER 
GO
ALTER DATABASE [BaseDatosRestaurante] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BaseDatosRestaurante] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BaseDatosRestaurante] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BaseDatosRestaurante] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BaseDatosRestaurante] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BaseDatosRestaurante', N'ON'
GO
USE [BaseDatosRestaurante]
GO
/****** Object:  Table [dbo].[Amigos]    Script Date: 17/06/2017 16:09:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amigos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkUsuario] [int] NOT NULL,
	[FkAmigo] [int] NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Amigos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[ID] [varchar](50) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkUsuario] [int] NOT NULL,
	[Cometario] [varchar](200) NOT NULL,
	[Valoracion] [int] NOT NULL,
	[Clasificacion] [varchar](30) NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_ComentarioRestaurante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ComentariosXPlatillos]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComentariosXPlatillos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkPlatillo] [int] NOT NULL,
	[FkCometario] [int] NOT NULL,
 CONSTRAINT [PK_ComentariosXPlatillos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CometariosXRestaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CometariosXRestaurante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkRestaurante] [int] NOT NULL,
	[FkComentarios] [int] NOT NULL,
 CONSTRAINT [PK_CometariosXRestaurante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Establecimiento]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Establecimiento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Establecimiento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Establecimiento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eventos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Evento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Eventos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventoXRestaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventoXRestaurante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkEvento] [int] NOT NULL,
	[FkRestaurante] [int] NOT NULL,
 CONSTRAINT [PK_EventoXRestaurante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Llegada]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Llegada](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkRestaurante] [int] NOT NULL,
	[FkTransporte] [int] NOT NULL,
	[Instrucciones] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Llegada] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pais]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[nombre] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[nom] [varchar](50) NOT NULL,
	[iso2] [varchar](50) NOT NULL,
	[iso3] [varchar](50) NOT NULL,
	[phoneCode] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[iso3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Platillos]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platillos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Platillos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlatillosXRestaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlatillosXRestaurante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkRestaurante] [int] NOT NULL,
	[FkPlatillo] [int] NOT NULL,
 CONSTRAINT [PK_PlatillosXRestaurante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RangoPrecio]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangoPrecio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Precio] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RangoPrecio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Restaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkPais] [varchar](50) NOT NULL,
	[FkCiudad] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[FkEstablecimiento] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[FkRangoPrecio] [int] NULL,
 CONSTRAINT [PK_Restaurante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Restriccion]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restriccion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Restriccion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Restriccion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RestriccionDieteticaXRestaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestriccionDieteticaXRestaurante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkRestaurante] [int] NOT NULL,
	[FkRestriccion] [int] NOT NULL,
 CONSTRAINT [PK_RestriccionDieteticaXRestaurante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TiempoComida]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiempoComida](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tiempo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiempoComida] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TiempoComidaXRestaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiempoComidaXRestaurante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkTiempoComida] [int] NOT NULL,
	[FkRestaurante] [int] NOT NULL,
 CONSTRAINT [PK_TiempoComidaXRestaurante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoCocina]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCocina](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TipoCocina] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoCocinaXRestaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCocinaXRestaurante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkRestaurante] [int] NOT NULL,
	[FkTipoCocina] [int] NOT NULL,
 CONSTRAINT [PK_TipoCocinaXRestaurante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transporte](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Transporte] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Transporte] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CorreoEletronico] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[FkPais] [varchar](50) NULL,
	[Provincia] [varchar](50) NULL,
	[Sexo] [varchar](50) NULL,
	[NombreUsuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Amigos]  WITH CHECK ADD  CONSTRAINT [FK_Amigos_Usuario] FOREIGN KEY([FkUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Amigos] CHECK CONSTRAINT [FK_Amigos_Usuario]
GO
ALTER TABLE [dbo].[Amigos]  WITH CHECK ADD  CONSTRAINT [FK_Amigos_Usuario1] FOREIGN KEY([FkAmigo])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Amigos] CHECK CONSTRAINT [FK_Amigos_Usuario1]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_ComentarioRestaurante_Usuario] FOREIGN KEY([FkUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_ComentarioRestaurante_Usuario]
GO
ALTER TABLE [dbo].[ComentariosXPlatillos]  WITH CHECK ADD  CONSTRAINT [FK_ComentariosXPlatillos_Comentarios] FOREIGN KEY([FkCometario])
REFERENCES [dbo].[Comentarios] ([Id])
GO
ALTER TABLE [dbo].[ComentariosXPlatillos] CHECK CONSTRAINT [FK_ComentariosXPlatillos_Comentarios]
GO
ALTER TABLE [dbo].[ComentariosXPlatillos]  WITH CHECK ADD  CONSTRAINT [FK_ComentariosXPlatillos_PlatillosXRestaurante] FOREIGN KEY([FkPlatillo])
REFERENCES [dbo].[PlatillosXRestaurante] ([Id])
GO
ALTER TABLE [dbo].[ComentariosXPlatillos] CHECK CONSTRAINT [FK_ComentariosXPlatillos_PlatillosXRestaurante]
GO
ALTER TABLE [dbo].[CometariosXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_CometariosXRestaurante_Comentarios] FOREIGN KEY([FkComentarios])
REFERENCES [dbo].[Comentarios] ([Id])
GO
ALTER TABLE [dbo].[CometariosXRestaurante] CHECK CONSTRAINT [FK_CometariosXRestaurante_Comentarios]
GO
ALTER TABLE [dbo].[CometariosXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_CometariosXRestaurante_Restaurante] FOREIGN KEY([FkRestaurante])
REFERENCES [dbo].[Restaurante] ([Id])
GO
ALTER TABLE [dbo].[CometariosXRestaurante] CHECK CONSTRAINT [FK_CometariosXRestaurante_Restaurante]
GO
ALTER TABLE [dbo].[EventoXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_EventoXRestaurante_Eventos] FOREIGN KEY([FkEvento])
REFERENCES [dbo].[Eventos] ([Id])
GO
ALTER TABLE [dbo].[EventoXRestaurante] CHECK CONSTRAINT [FK_EventoXRestaurante_Eventos]
GO
ALTER TABLE [dbo].[EventoXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_EventoXRestaurante_Restaurante] FOREIGN KEY([FkRestaurante])
REFERENCES [dbo].[Restaurante] ([Id])
GO
ALTER TABLE [dbo].[EventoXRestaurante] CHECK CONSTRAINT [FK_EventoXRestaurante_Restaurante]
GO
ALTER TABLE [dbo].[Llegada]  WITH CHECK ADD  CONSTRAINT [FK_Llegada_Restaurante] FOREIGN KEY([FkRestaurante])
REFERENCES [dbo].[Restaurante] ([Id])
GO
ALTER TABLE [dbo].[Llegada] CHECK CONSTRAINT [FK_Llegada_Restaurante]
GO
ALTER TABLE [dbo].[Llegada]  WITH CHECK ADD  CONSTRAINT [FK_Llegada_Transporte] FOREIGN KEY([FkTransporte])
REFERENCES [dbo].[Transporte] ([Id])
GO
ALTER TABLE [dbo].[Llegada] CHECK CONSTRAINT [FK_Llegada_Transporte]
GO
ALTER TABLE [dbo].[PlatillosXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_PlatillosXRestaurante_Platillos] FOREIGN KEY([FkPlatillo])
REFERENCES [dbo].[Platillos] ([Id])
GO
ALTER TABLE [dbo].[PlatillosXRestaurante] CHECK CONSTRAINT [FK_PlatillosXRestaurante_Platillos]
GO
ALTER TABLE [dbo].[PlatillosXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_PlatillosXRestaurante_Restaurante] FOREIGN KEY([FkRestaurante])
REFERENCES [dbo].[Restaurante] ([Id])
GO
ALTER TABLE [dbo].[PlatillosXRestaurante] CHECK CONSTRAINT [FK_PlatillosXRestaurante_Restaurante]
GO
ALTER TABLE [dbo].[Restaurante]  WITH CHECK ADD  CONSTRAINT [FK_Restaurante_Ciudad] FOREIGN KEY([FkCiudad])
REFERENCES [dbo].[Ciudades] ([ID])
GO
ALTER TABLE [dbo].[Restaurante] CHECK CONSTRAINT [FK_Restaurante_Ciudad]
GO
ALTER TABLE [dbo].[Restaurante]  WITH CHECK ADD  CONSTRAINT [FK_Restaurante_Establecimiento] FOREIGN KEY([FkEstablecimiento])
REFERENCES [dbo].[Establecimiento] ([Id])
GO
ALTER TABLE [dbo].[Restaurante] CHECK CONSTRAINT [FK_Restaurante_Establecimiento]
GO
ALTER TABLE [dbo].[Restaurante]  WITH CHECK ADD  CONSTRAINT [FK_Restaurante_Pais] FOREIGN KEY([FkPais])
REFERENCES [dbo].[Pais] ([iso3])
GO
ALTER TABLE [dbo].[Restaurante] CHECK CONSTRAINT [FK_Restaurante_Pais]
GO
ALTER TABLE [dbo].[Restaurante]  WITH CHECK ADD  CONSTRAINT [FK_Restaurante_RangoPrecio] FOREIGN KEY([FkRangoPrecio])
REFERENCES [dbo].[RangoPrecio] ([Id])
GO
ALTER TABLE [dbo].[Restaurante] CHECK CONSTRAINT [FK_Restaurante_RangoPrecio]
GO
ALTER TABLE [dbo].[RestriccionDieteticaXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_RestriccionDieteticaXRestaurante_Restaurante] FOREIGN KEY([FkRestaurante])
REFERENCES [dbo].[Restaurante] ([Id])
GO
ALTER TABLE [dbo].[RestriccionDieteticaXRestaurante] CHECK CONSTRAINT [FK_RestriccionDieteticaXRestaurante_Restaurante]
GO
ALTER TABLE [dbo].[RestriccionDieteticaXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_RestriccionDieteticaXRestaurante_Restriccion] FOREIGN KEY([FkRestriccion])
REFERENCES [dbo].[Restriccion] ([Id])
GO
ALTER TABLE [dbo].[RestriccionDieteticaXRestaurante] CHECK CONSTRAINT [FK_RestriccionDieteticaXRestaurante_Restriccion]
GO
ALTER TABLE [dbo].[TiempoComidaXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_TiempoComidaXRestaurante_Restaurante] FOREIGN KEY([FkRestaurante])
REFERENCES [dbo].[Restaurante] ([Id])
GO
ALTER TABLE [dbo].[TiempoComidaXRestaurante] CHECK CONSTRAINT [FK_TiempoComidaXRestaurante_Restaurante]
GO
ALTER TABLE [dbo].[TiempoComidaXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_TiempoComidaXRestaurante_TiempoComida] FOREIGN KEY([FkTiempoComida])
REFERENCES [dbo].[TiempoComida] ([Id])
GO
ALTER TABLE [dbo].[TiempoComidaXRestaurante] CHECK CONSTRAINT [FK_TiempoComidaXRestaurante_TiempoComida]
GO
ALTER TABLE [dbo].[TipoCocinaXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_TipoCocinaXRestaurante_Restaurante] FOREIGN KEY([FkRestaurante])
REFERENCES [dbo].[Restaurante] ([Id])
GO
ALTER TABLE [dbo].[TipoCocinaXRestaurante] CHECK CONSTRAINT [FK_TipoCocinaXRestaurante_Restaurante]
GO
ALTER TABLE [dbo].[TipoCocinaXRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_TipoCocinaXRestaurante_TipoCocina] FOREIGN KEY([FkTipoCocina])
REFERENCES [dbo].[TipoCocina] ([Id])
GO
ALTER TABLE [dbo].[TipoCocinaXRestaurante] CHECK CONSTRAINT [FK_TipoCocinaXRestaurante_TipoCocina]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pais] FOREIGN KEY([FkPais])
REFERENCES [dbo].[Pais] ([iso3])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pais]
GO
/****** Object:  StoredProcedure [dbo].[add_platillo_to_restaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[add_platillo_to_restaurante] @id_restaurante int, @id_platillo int
as
	insert into PlatillosXRestaurante (FkPlatillo, FkRestaurante)
	values (@id_platillo, @id_restaurante);

GO
/****** Object:  StoredProcedure [dbo].[create_amigo]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[create_amigo] @fk_usuario int, @fk_amigo int
as
	insert into Amigos (FkUsuario, FkAmigo, Estado)
	values (@fk_usuario, @fk_amigo, 'Pendiente');

GO
/****** Object:  StoredProcedure [dbo].[create_colaborador]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------------------------------------
---------------------------------Colaborador----------------------------------------
------------------------------------------------------------------------------------

create procedure [dbo].[create_colaborador] @correo varchar(50), @nombre varchar(50), @fk_pais int, @provincia varchar (50), @sexo varchar(50), @nombre_usuario varchar(50)
as
	insert into Usuario (CorreoEletronico, Nombre, FkPais, Provincia, Sexo, NombreUsuario)
	values (@correo, @nombre, @fk_pais, @provincia, @sexo, @nombre_usuario);

GO
/****** Object:  StoredProcedure [dbo].[create_platillo]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------
------------------------------Platillos----------------------------------
-------------------------------------------------------------------------

create procedure [dbo].[create_platillo] @nombre varchar(50), @descripcion varchar(50)
as
	insert into Platillos (Nombre, Descripcion)
	values (@nombre, @descripcion);

GO
/****** Object:  StoredProcedure [dbo].[delete_dieta]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[delete_dieta] @Id int
as
	delete from RestriccionDieteticaXRestaurante
	where Id = @Id;

GO
/****** Object:  StoredProcedure [dbo].[delete_evento]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[delete_evento] @Id int
as
	delete from EventoXRestaurante
	where Id = @Id;

GO
/****** Object:  StoredProcedure [dbo].[delete_llegada]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[delete_llegada] @Id int
as
	delete from Llegada
	where Id = @Id;

GO
/****** Object:  StoredProcedure [dbo].[delete_platillo]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[delete_platillo] @id int
as
	delete from Platillos
	where Id = @id

GO
/****** Object:  StoredProcedure [dbo].[delete_platillo_to_restaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[delete_platillo_to_restaurante] @id int
as
	delete from ComentariosXPlatillos
	where FkPlatillo = @id;

	delete from PlatillosXRestaurante
	where Id = @id

GO
/****** Object:  StoredProcedure [dbo].[delete_tiempo_comida]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[delete_tiempo_comida] @Id int
as
	delete from TiempoComidaXRestaurante
	where Id = @Id;

GO
/****** Object:  StoredProcedure [dbo].[delete_tipo_cocina]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[delete_tipo_cocina] @Id int
as 
	delete from TipoCocinaXRestaurante
	where Id = @Id;

GO
/****** Object:  StoredProcedure [dbo].[get_amigos]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[get_amigos] @Id_colaborador int
as
	select u.Nombre, u.NombreUsuario, u.Sexo, u.Provincia, u.CorreoEletronico from Amigos a, Usuario u
	where  a.FkUsuario = @Id_colaborador and a.FkAmigo = u.Id

GO
/****** Object:  StoredProcedure [dbo].[get_last_comments]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------------------------------------------------------
------------------------------------Otros-------------------------------------------
------------------------------------------------------------------------------------

create procedure [dbo].[get_last_comments] @id_restaurante int, @id_ciudad int
as
	select top(10) c.Cometario from Restaurante r, CometariosXRestaurante cr, Comentarios c
	where r.Id = @id_restaurante and r.FkCiudad = @id_ciudad and cr.FkComentarios = c.Id and cr.FkRestaurante = r.Id
	order by c.Fecha desc

GO
/****** Object:  StoredProcedure [dbo].[get_restaurant_city]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[get_restaurant_city] @id_ciudad int
as
	select r.Descripcion, r.Nombre from Restaurante r, RangoPrecio rp, TiempoComida tc, TiempoComidaXRestaurante tcr, RestriccionDieteticaXRestaurante rdr, Restriccion rt
	where r.FkCiudad = @id_ciudad and tcr.FkRestaurante = r.Id and tcr.FkTiempoComida = tc.Id and tc.Tiempo = 'Cena' and rdr.FkRestaurante = r.Id and rdr.FkRestriccion = rt.Id and rt.Restriccion = 'Vegetariano' and r.FkRangoPrecio = rp.Id and rp.Precio = 'Intermedio'

GO
/****** Object:  StoredProcedure [dbo].[insert_comentario_platillo]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insert_comentario_platillo] @id_platillo_restaurante int, @id_usuario int, @fecha date, @comentario varchar(200), @valoracion int, @clasificacion varchar(30)
as
	insert into Comentarios(FkUsuario, Cometario, Valoracion, Clasificacion, Fecha) 
	values (@id_usuario, @comentario, @valoracion, @clasificacion, @fecha);

	insert into CometariosXRestaurante (FkRestaurante, FkComentarios)
	values (@id_platillo_restaurante, IDENT_CURRENT('Comentarios'))

GO
/****** Object:  StoredProcedure [dbo].[insert_cometario_restaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------------------------------------
---------------------------------Cometarios-----------------------------------------
------------------------------------------------------------------------------------

create procedure [dbo].[insert_cometario_restaurante] @id_restaurante int, @id_usuario int, @fecha date, @comentario varchar(200), @valoracion int, @clasificacion varchar(30)
as
	insert into Comentarios(FkUsuario, Cometario, Valoracion, Clasificacion, Fecha) 
	values (@id_usuario, @comentario, @valoracion, @clasificacion, @fecha);

	insert into CometariosXRestaurante (FkRestaurante, FkComentarios)
	values (@id_restaurante, IDENT_CURRENT('Comentarios'))

GO
/****** Object:  StoredProcedure [dbo].[insert_dieta]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insert_dieta] @fk_restaurante int, @fk_dieta int
as
	insert into RestriccionDieteticaXRestaurante(FkRestaurante, FkRestriccion)
	values (@fk_restaurante, @fk_dieta);

GO
/****** Object:  StoredProcedure [dbo].[insert_evento]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insert_evento] @fk_restaurante int, @fk_evento int
as
	insert into EventoXRestaurante (FkRestaurante, FkEvento)
	values (@fk_restaurante, @fk_evento);

GO
/****** Object:  StoredProcedure [dbo].[insert_llegada]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insert_llegada] @fk_restaurante int, @fk_transporte int, @descripcion varchar(200)
as
	insert into Llegada (FkRestaurante, FkTransporte, Instrucciones)
	values ( @fk_restaurante, @fk_transporte, @descripcion);

GO
/****** Object:  StoredProcedure [dbo].[insert_restaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[insert_restaurante] @fk_pais int, @fk_ciudad int, @descripcion varchar(200), @fk_establecimiento int, @nombre varchar(30), @fk_rango_precio int
as
	insert into Restaurante (FkPais, FkCiudad, Descripcion, FkEstablecimiento, Nombre, FkRangoPrecio)
	values (@fk_pais, @fk_ciudad, @descripcion, @fk_establecimiento, @nombre, @fk_rango_precio);

GO
/****** Object:  StoredProcedure [dbo].[insert_tiempo_comida]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insert_tiempo_comida] @fk_restaurante int, @fk_tiempo_comida int
as
	insert into TiempoComidaXRestaurante (FkRestaurante, FkTiempoComida)
	values (@fk_restaurante, @fk_tiempo_comida);

GO
/****** Object:  StoredProcedure [dbo].[insert_tipo_cocina]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insert_tipo_cocina] @fk_restaurante int, @fk_tipo_cocina int
as
	insert into TipoCocinaXRestaurante (FkRestaurante, FkTipoCocina)
	values (@fk_restaurante, @fk_tipo_cocina);

GO
/****** Object:  StoredProcedure [dbo].[select_dieta]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[select_dieta] @id_restaurantes int
as
	select r.Restriccion from RestriccionDieteticaXRestaurante rr, Restriccion r
	where rr.FkRestaurante = @id_restaurantes and rr.FkRestriccion = r.Id;

GO
/****** Object:  StoredProcedure [dbo].[select_evento]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[select_evento] @id_restaurantes int
as
	select e.Evento from EventoXRestaurante er, Eventos e
	where er.FkRestaurante = @id_restaurantes and er.FkEvento = e.Id

GO
/****** Object:  StoredProcedure [dbo].[select_llegada]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[select_llegada] @id_restaurantes int
as
	select l.Instrucciones, t.Transporte from Llegada l, Transporte t
	where l.FkRestaurante = @id_restaurantes and t.Id = l.FkTransporte;

GO
/****** Object:  StoredProcedure [dbo].[select_restaurantes]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[select_restaurantes] 
as 
	select r.Id, r.Nombre, r.Descripcion, e.Establecimiento, rp.Precio, c.Ciudad, p.Pais, p.Codigo from Restaurante r, Establecimiento e, RangoPrecio rp, Ciudad c, Pais p
	where r.FkCiudad = c.Id and r.FkEstablecimiento = e.Id and r.FkPais = p.Id and r.FkRangoPrecio = rp.Id;

GO
/****** Object:  StoredProcedure [dbo].[select_solicitudes]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[select_solicitudes] @Id int
as
	select u.Nombre, u.NombreUsuario, u.Sexo, u.CorreoEletronico, p.Pais from Amigos a, Usuario u, Pais p
	where p.Id = u.FkPais and a.FkUsuario = @Id and u.Id = a.FkAmigo and a.Estado = 'Pendiente'

GO
/****** Object:  StoredProcedure [dbo].[select_tiempo_comida]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[select_tiempo_comida] @id_restaurantes int
as
	select t.Tiempo from TiempoComidaXRestaurante tr, TiempoComida t
	where tr.FkRestaurante = @id_restaurantes and t.Id = tr.FkTiempoComida;

GO
/****** Object:  StoredProcedure [dbo].[select_tipo_cocina]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[select_tipo_cocina] @id_restaurante int
as
	select t.TipoCocina from TipoCocinaXRestaurante tr, TipoCocina t
	where tr.FkRestaurante = @id_restaurante and tr.FkTipoCocina = t.TipoCocina;

GO
/****** Object:  StoredProcedure [dbo].[unselect_dieta]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[unselect_dieta] @id_restaurantes int
as
	select r.Restriccion from Restriccion r
	except
	select r.Restriccion from RestriccionDieteticaXRestaurante rr, Restriccion r
	where rr.FkRestaurante = @id_restaurantes and rr.FkRestriccion = r.Id;

GO
/****** Object:  StoredProcedure [dbo].[unselect_evento]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[unselect_evento] @id_restaurantes int
as
	select e.Evento from Eventos e
	except 
	select e.Evento from EventoXRestaurante er, Eventos e
	where er.FkRestaurante = @id_restaurantes and er.FkEvento = e.Id

GO
/****** Object:  StoredProcedure [dbo].[unselect_tiempo_comida]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[unselect_tiempo_comida] @id_restaurantes int
as
	select t.Tiempo from TiempoComida t
	except
	select t.Tiempo from TiempoComidaXRestaurante tr, TiempoComida t
	where tr.FkRestaurante = @id_restaurantes and t.Id = tr.FkTiempoComida;

GO
/****** Object:  StoredProcedure [dbo].[unselect_tipo_cocina]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[unselect_tipo_cocina] @id_restaurante int
as
	select t.TipoCocina from TipoCocina t
	except
	select t.TipoCocina from TipoCocinaXRestaurante tr, TipoCocina t
	where tr.FkRestaurante = @id_restaurante and tr.FkTipoCocina = t.TipoCocina;

GO
/****** Object:  StoredProcedure [dbo].[update_amigo_aceptado]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[update_amigo_aceptado] @Id int, @fk_amigo int
as
	update Amigos
		set Estado = 'Aceptado'
		where FkUsuario = @Id and FkAmigo = @fk_amigo;

GO
/****** Object:  StoredProcedure [dbo].[update_amigo_rechazado]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[update_amigo_rechazado] @Id int, @fk_amigo int
as
	update Amigos
		set Estado = 'Rechazado'
		where FkUsuario = @Id and FkAmigo = @fk_amigo;

GO
/****** Object:  StoredProcedure [dbo].[update_restaurante]    Script Date: 17/06/2017 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[update_restaurante] @Id int, @fk_pais int, @fk_ciudad int, @descripcion varchar(200), @fk_establecimiento int, @nombre varchar(30), @fk_rango_precio int
as
	update Restaurante
		set FkPais = @fk_pais, FkCiudad = @fk_ciudad, Descripcion = @descripcion, FkEstablecimiento = @fk_establecimiento, Nombre = @nombre, @fk_rango_precio = @fk_rango_precio
		where Id = @Id;

GO
USE [master]
GO
ALTER DATABASE [BaseDatosRestaurante] SET  READ_WRITE 
GO
