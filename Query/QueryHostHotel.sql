USE [master]
GO

/****** Object:  Database [HostHotel]    Script Date: 11/06/2021 13:55:04 ******/
CREATE DATABASE [HostHotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HostHotel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HostHotel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HostHotel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HostHotel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HostHotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [HostHotel] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [HostHotel] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [HostHotel] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [HostHotel] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [HostHotel] SET ARITHABORT OFF 
GO

ALTER DATABASE [HostHotel] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [HostHotel] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [HostHotel] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [HostHotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [HostHotel] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [HostHotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [HostHotel] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [HostHotel] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [HostHotel] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [HostHotel] SET  ENABLE_BROKER 
GO

ALTER DATABASE [HostHotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [HostHotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [HostHotel] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [HostHotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [HostHotel] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [HostHotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [HostHotel] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [HostHotel] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [HostHotel] SET  MULTI_USER 
GO

ALTER DATABASE [HostHotel] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [HostHotel] SET DB_CHAINING OFF 
GO

ALTER DATABASE [HostHotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [HostHotel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [HostHotel] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [HostHotel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [HostHotel] SET QUERY_STORE = OFF
GO

ALTER DATABASE [HostHotel] SET  READ_WRITE 
GO

