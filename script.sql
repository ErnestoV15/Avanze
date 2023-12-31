USE [master]
GO
/****** Object:  Database [ProyectoNotas]    Script Date: 9/6/2023 21:46:51 ******/
CREATE DATABASE [ProyectoNotas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoNotas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ProyectoNotas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoNotas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ProyectoNotas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ProyectoNotas] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoNotas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoNotas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoNotas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoNotas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoNotas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoNotas] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoNotas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoNotas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoNotas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoNotas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoNotas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoNotas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoNotas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoNotas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoNotas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoNotas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectoNotas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoNotas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoNotas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoNotas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoNotas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoNotas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoNotas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoNotas] SET RECOVERY FULL 
GO
ALTER DATABASE [ProyectoNotas] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoNotas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoNotas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoNotas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoNotas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoNotas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoNotas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProyectoNotas', N'ON'
GO
ALTER DATABASE [ProyectoNotas] SET QUERY_STORE = ON
GO
ALTER DATABASE [ProyectoNotas] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ProyectoNotas]
GO
/****** Object:  Table [dbo].[Asignacion]    Script Date: 9/6/2023 21:46:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignacion](
	[fiIDAsignacion] [int] IDENTITY(1,1) NOT NULL,
	[fiIDSeccion] [int] NOT NULL,
	[fcNombreAsignacion] [varchar](50) NOT NULL,
	[fcDescripcion] [varchar](50) NOT NULL,
	[fiActivo] [bit] NOT NULL,
 CONSTRAINT [PK_Asignacion] PRIMARY KEY CLUSTERED 
(
	[fiIDAsignacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 9/6/2023 21:46:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[fiIDEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[fiIDPersona] [int] NOT NULL,
	[fiIDTipoEmpleado] [int] NOT NULL,
	[fnSueldo] [decimal](13, 2) NOT NULL,
	[fiActivo] [bit] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[fiIDEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 9/6/2023 21:46:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[fiIDEstudiante] [int] IDENTITY(1,1) NOT NULL,
	[fiIDPersona] [int] NOT NULL,
	[fnActivo] [bit] NOT NULL,
	[fdFechaInicio] [datetime] NOT NULL,
	[fnBecado] [bit] NOT NULL,
	[fnTipoBeca] [int] NOT NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[fiIDEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 9/6/2023 21:46:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[fiMateria] [int] IDENTITY(1,1) NOT NULL,
	[fcNombreMateria] [varchar](50) NOT NULL,
	[fcDescripcion] [varchar](50) NOT NULL,
	[fnCosto] [decimal](13, 2) NOT NULL,
	[fiUnidadesValorativas] [int] NOT NULL,
 CONSTRAINT [PK_Materias] PRIMARY KEY CLUSTERED 
(
	[fiMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 9/6/2023 21:46:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[fiIDMatricula] [int] IDENTITY(1,1) NOT NULL,
	[fiIDSeccion] [int] NOT NULL,
	[fiIDEmpleado] [int] NOT NULL,
	[fiIDEstudiante] [int] NOT NULL,
	[fdFechaMatricula] [datetime] NOT NULL,
	[fnActivo] [int] NOT NULL,
 CONSTRAINT [PK_Matricula] PRIMARY KEY CLUSTERED 
(
	[fiIDMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 9/6/2023 21:46:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[fiIDNotaRegistro] [int] IDENTITY(1,1) NOT NULL,
	[fiIDEstudiante] [int] NOT NULL,
	[fiIDSeccion] [int] NOT NULL,
	[fnNota] [decimal](13, 2) NOT NULL,
 CONSTRAINT [PK_Notas] PRIMARY KEY CLUSTERED 
(
	[fiIDNotaRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 9/6/2023 21:46:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[fiIDPersona] [int] IDENTITY(1,1) NOT NULL,
	[fcNombre] [varchar](50) NOT NULL,
	[fcTelefono] [varchar](50) NOT NULL,
	[fcCorreo] [varchar](50) NOT NULL,
	[fcDirecccion] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[fiIDPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 9/6/2023 21:46:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puestos](
	[fiPuesto] [int] IDENTITY(1,1) NOT NULL,
	[fcDescripcionPuesto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Puestos] PRIMARY KEY CLUSTERED 
(
	[fiPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seccion]    Script Date: 9/6/2023 21:46:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seccion](
	[fiIDSeccion] [int] IDENTITY(1,1) NOT NULL,
	[fiIDClase] [int] NOT NULL,
	[fiDias] [int] NOT NULL,
	[fcHora] [varchar](50) NOT NULL,
	[fiEmpleado] [int] NOT NULL,
 CONSTRAINT [PK_Seccion] PRIMARY KEY CLUSTERED 
(
	[fiIDSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Asignacion]  WITH CHECK ADD  CONSTRAINT [FK_Asignacion_Seccion] FOREIGN KEY([fiIDSeccion])
REFERENCES [dbo].[Seccion] ([fiIDSeccion])
GO
ALTER TABLE [dbo].[Asignacion] CHECK CONSTRAINT [FK_Asignacion_Seccion]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Persona] FOREIGN KEY([fiIDPersona])
REFERENCES [dbo].[Persona] ([fiIDPersona])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Persona]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Puestos] FOREIGN KEY([fiIDTipoEmpleado])
REFERENCES [dbo].[Puestos] ([fiPuesto])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Puestos]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantes_Persona] FOREIGN KEY([fiIDPersona])
REFERENCES [dbo].[Persona] ([fiIDPersona])
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [FK_Estudiantes_Persona]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Empleados] FOREIGN KEY([fiIDEmpleado])
REFERENCES [dbo].[Empleados] ([fiIDEmpleado])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Empleados]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Estudiantes] FOREIGN KEY([fiIDEstudiante])
REFERENCES [dbo].[Estudiantes] ([fiIDEstudiante])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Estudiantes]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Estudiantes1] FOREIGN KEY([fiIDEstudiante])
REFERENCES [dbo].[Estudiantes] ([fiIDEstudiante])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Estudiantes1]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Seccion] FOREIGN KEY([fiIDSeccion])
REFERENCES [dbo].[Seccion] ([fiIDSeccion])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Seccion]
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD  CONSTRAINT [FK_Notas_Estudiantes] FOREIGN KEY([fiIDEstudiante])
REFERENCES [dbo].[Estudiantes] ([fiIDEstudiante])
GO
ALTER TABLE [dbo].[Notas] CHECK CONSTRAINT [FK_Notas_Estudiantes]
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD  CONSTRAINT [FK_Notas_Seccion] FOREIGN KEY([fiIDSeccion])
REFERENCES [dbo].[Seccion] ([fiIDSeccion])
GO
ALTER TABLE [dbo].[Notas] CHECK CONSTRAINT [FK_Notas_Seccion]
GO
ALTER TABLE [dbo].[Seccion]  WITH CHECK ADD  CONSTRAINT [FK_Seccion_Empleados] FOREIGN KEY([fiEmpleado])
REFERENCES [dbo].[Empleados] ([fiIDEmpleado])
GO
ALTER TABLE [dbo].[Seccion] CHECK CONSTRAINT [FK_Seccion_Empleados]
GO
ALTER TABLE [dbo].[Seccion]  WITH CHECK ADD  CONSTRAINT [FK_Seccion_Materias] FOREIGN KEY([fiIDClase])
REFERENCES [dbo].[Materias] ([fiMateria])
GO
ALTER TABLE [dbo].[Seccion] CHECK CONSTRAINT [FK_Seccion_Materias]
GO
USE [master]
GO
ALTER DATABASE [ProyectoNotas] SET  READ_WRITE 
GO
