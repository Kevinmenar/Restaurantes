USE [master]
GO
/****** Object:  Database [BaseDatosRestaurante]    Script Date: 24/04/2017 0:01:59 ******/
CREATE DATABASE [BaseDatosRestaurante]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BaseDatosRestaurante', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BaseDatosRestaurante.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BaseDatosRestaurante_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BaseDatosRestaurante_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[Amigos]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ciudad] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clasificaciones]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clasificaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Clasificacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clasificaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComentarioRestaurante]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComentarioRestaurante](
	[Id] [int] NOT NULL,
	[FkRestaurante] [int] NOT NULL,
	[FkUsuario] [int] NOT NULL,
	[Cometario] [varchar](200) NOT NULL,
	[Valoracion] [int] NOT NULL,
	[FkClasificacion] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_ComentarioRestaurante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CometarioPlatillo]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CometarioPlatillo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkPlatilloRestaurante] [int] NOT NULL,
	[FkUsuario] [int] NOT NULL,
	[Cometario] [varchar](200) NOT NULL,
	[Valoracion] [int] NOT NULL,
	[FkClasificacion] [int] NOT NULL,
 CONSTRAINT [PK_CometarioPlatillo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Establecimiento]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventoXRestaurante]    Script Date: 24/04/2017 0:02:00 ******/
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
/****** Object:  Table [dbo].[Llegada]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[Pais] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Platillos]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlatillosXRestaurante]    Script Date: 24/04/2017 0:02:00 ******/
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
/****** Object:  Table [dbo].[RangoPrecio]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RangoPrecio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Precio] [varbinary](50) NOT NULL,
 CONSTRAINT [PK_RangoPrecio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Restaurante]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Restaurante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FkPais] [int] NOT NULL,
	[FkCiudad] [int] NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[FkEstablecimiento] [int] NOT NULL,
	[FkRangoPrecio] [int] NULL,
 CONSTRAINT [PK_Restaurante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Restriccion]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RestriccionDieteticaXRestaurante]    Script Date: 24/04/2017 0:02:00 ******/
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
/****** Object:  Table [dbo].[TiempoComida]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiempoComidaXRestaurante]    Script Date: 24/04/2017 0:02:00 ******/
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
/****** Object:  Table [dbo].[TipoCocina]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoCocina](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TipoCocina] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TipoCocina] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoCocinaXRestaurante]    Script Date: 24/04/2017 0:02:00 ******/
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
/****** Object:  Table [dbo].[Transporte]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 24/04/2017 0:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CorreoEletronico] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[FkPais] [int] NULL,
	[Provincia] [varchar](50) NULL,
	[Sexo] [varchar](50) NULL,
	[NombreUsuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
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
ALTER TABLE [dbo].[ComentarioRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_ComentarioRestaurante_Clasificaciones] FOREIGN KEY([FkClasificacion])
REFERENCES [dbo].[Clasificaciones] ([Id])
GO
ALTER TABLE [dbo].[ComentarioRestaurante] CHECK CONSTRAINT [FK_ComentarioRestaurante_Clasificaciones]
GO
ALTER TABLE [dbo].[ComentarioRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_ComentarioRestaurante_Restaurante] FOREIGN KEY([FkRestaurante])
REFERENCES [dbo].[Restaurante] ([Id])
GO
ALTER TABLE [dbo].[ComentarioRestaurante] CHECK CONSTRAINT [FK_ComentarioRestaurante_Restaurante]
GO
ALTER TABLE [dbo].[ComentarioRestaurante]  WITH CHECK ADD  CONSTRAINT [FK_ComentarioRestaurante_Usuario] FOREIGN KEY([FkUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[ComentarioRestaurante] CHECK CONSTRAINT [FK_ComentarioRestaurante_Usuario]
GO
ALTER TABLE [dbo].[CometarioPlatillo]  WITH CHECK ADD  CONSTRAINT [FK_CometarioPlatillo_Clasificaciones] FOREIGN KEY([FkClasificacion])
REFERENCES [dbo].[Clasificaciones] ([Id])
GO
ALTER TABLE [dbo].[CometarioPlatillo] CHECK CONSTRAINT [FK_CometarioPlatillo_Clasificaciones]
GO
ALTER TABLE [dbo].[CometarioPlatillo]  WITH CHECK ADD  CONSTRAINT [FK_CometarioPlatillo_PlatillosXRestaurante] FOREIGN KEY([FkPlatilloRestaurante])
REFERENCES [dbo].[PlatillosXRestaurante] ([Id])
GO
ALTER TABLE [dbo].[CometarioPlatillo] CHECK CONSTRAINT [FK_CometarioPlatillo_PlatillosXRestaurante]
GO
ALTER TABLE [dbo].[CometarioPlatillo]  WITH CHECK ADD  CONSTRAINT [FK_CometarioPlatillo_Usuario] FOREIGN KEY([FkUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[CometarioPlatillo] CHECK CONSTRAINT [FK_CometarioPlatillo_Usuario]
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
REFERENCES [dbo].[Ciudad] ([Id])
GO
ALTER TABLE [dbo].[Restaurante] CHECK CONSTRAINT [FK_Restaurante_Ciudad]
GO
ALTER TABLE [dbo].[Restaurante]  WITH CHECK ADD  CONSTRAINT [FK_Restaurante_Establecimiento] FOREIGN KEY([FkEstablecimiento])
REFERENCES [dbo].[Establecimiento] ([Id])
GO
ALTER TABLE [dbo].[Restaurante] CHECK CONSTRAINT [FK_Restaurante_Establecimiento]
GO
ALTER TABLE [dbo].[Restaurante]  WITH CHECK ADD  CONSTRAINT [FK_Restaurante_Pais] FOREIGN KEY([FkPais])
REFERENCES [dbo].[Pais] ([Id])
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
REFERENCES [dbo].[Pais] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pais]
GO
USE [master]
GO
ALTER DATABASE [BaseDatosRestaurante] SET  READ_WRITE 
GO
