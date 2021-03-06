USE [master]
GO

/****** Object:  Database [ShortTermDatabaseName]    Script Date: 2020-01-24 2:42:30 PM ******/
CREATE DATABASE [ShortTermDatabaseName]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShortTermDatabaseName', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShortTermDatabaseName.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShortTermDatabaseName_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShortTermDatabaseName_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShortTermDatabaseName].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ShortTermDatabaseName] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET ARITHABORT OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ShortTermDatabaseName] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ShortTermDatabaseName] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ShortTermDatabaseName] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ShortTermDatabaseName] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET RECOVERY FULL 
GO

ALTER DATABASE [ShortTermDatabaseName] SET  MULTI_USER 
GO

ALTER DATABASE [ShortTermDatabaseName] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ShortTermDatabaseName] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ShortTermDatabaseName] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ShortTermDatabaseName] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ShortTermDatabaseName] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ShortTermDatabaseName] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ShortTermDatabaseName] SET  READ_WRITE 
GO

