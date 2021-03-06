USE [master]
GO
/****** Object:  Database [LabWeb2]    Script Date: 6/19/2021 8:30:28 PM ******/
CREATE DATABASE [LabWeb2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LabWeb2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LabWeb2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LabWeb2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LabWeb2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LabWeb2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LabWeb2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LabWeb2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LabWeb2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LabWeb2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LabWeb2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LabWeb2] SET ARITHABORT OFF 
GO
ALTER DATABASE [LabWeb2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LabWeb2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LabWeb2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LabWeb2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LabWeb2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LabWeb2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LabWeb2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LabWeb2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LabWeb2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LabWeb2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LabWeb2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LabWeb2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LabWeb2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LabWeb2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LabWeb2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LabWeb2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LabWeb2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LabWeb2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LabWeb2] SET  MULTI_USER 
GO
ALTER DATABASE [LabWeb2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LabWeb2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LabWeb2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LabWeb2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LabWeb2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LabWeb2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LabWeb2] SET QUERY_STORE = OFF
GO
USE [LabWeb2]
GO
/****** Object:  Table [dbo].[tblPromotion]    Script Date: 6/19/2021 8:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPromotion](
	[promotionID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [nvarchar](50) NOT NULL,
	[nameuser] [nvarchar](50) NOT NULL,
	[rank] [int] NOT NULL,
	[dateAdd] [date] NOT NULL,
 CONSTRAINT [PK_tblPromotion] PRIMARY KEY CLUSTERED 
(
	[promotionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 6/19/2021 8:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[roleID] [int] NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblRole] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 6/19/2021 8:30:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [nvarchar](50) NOT NULL,
	[password] [nvarchar](1000) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](1000) NULL,
	[address] [nvarchar](50) NOT NULL,
	[status] [varchar](10) NOT NULL,
	[roleID] [int] NOT NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblPromotion] ON 

INSERT [dbo].[tblPromotion] ([promotionID], [userID], [nameuser], [rank], [dateAdd]) VALUES (1049, N'user1', N'User', 5, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[tblPromotion] ([promotionID], [userID], [nameuser], [rank], [dateAdd]) VALUES (1050, N'ty', N'abcde', 5, CAST(N'2021-06-19' AS Date))
INSERT [dbo].[tblPromotion] ([promotionID], [userID], [nameuser], [rank], [dateAdd]) VALUES (1051, N'user', N'User', 5, CAST(N'2021-06-19' AS Date))
INSERT [dbo].[tblPromotion] ([promotionID], [userID], [nameuser], [rank], [dateAdd]) VALUES (1052, N'user2', N'abcqa', 5, CAST(N'2021-06-19' AS Date))
SET IDENTITY_INSERT [dbo].[tblPromotion] OFF
GO
INSERT [dbo].[tblRole] ([roleID], [roleName]) VALUES (1, N'admin')
INSERT [dbo].[tblRole] ([roleID], [roleName]) VALUES (2, N'user')
GO
INSERT [dbo].[tblUsers] ([userID], [password], [name], [image], [address], [status], [roleID]) VALUES (N'11', N'2c624232cdd221771294dfbb310aca000a0df6ac8b66b696d90ef06fdefb64a3', N'tan ty', N'nau.jpg', N'Tinh Thanh Hoa', N'notActive', 2)
INSERT [dbo].[tblUsers] ([userID], [password], [name], [image], [address], [status], [roleID]) VALUES (N'22', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'vanvo', N'images.png', N'TP HoChiMinh', N'notActive', 2)
INSERT [dbo].[tblUsers] ([userID], [password], [name], [image], [address], [status], [roleID]) VALUES (N'88', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'kfcab', N'images.png', N'TP HoChiMinh', N'notActive', 2)
INSERT [dbo].[tblUsers] ([userID], [password], [name], [image], [address], [status], [roleID]) VALUES (N'admin', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'Tan Ty', N'supr.jpg', N'HCM', N'active', 1)
INSERT [dbo].[tblUsers] ([userID], [password], [name], [image], [address], [status], [roleID]) VALUES (N'ty', N'f595eaa487be7ad3be3632dee5d2bbf4f5639261a6ff90624c9dfec7e68e70e4', N'nguyenvana', N'1.jpg', N'Ba Ria Vung Tau', N'active', 2)
INSERT [dbo].[tblUsers] ([userID], [password], [name], [image], [address], [status], [roleID]) VALUES (N'user', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'antinaldo', N'naru.jpg', N'Ba Ria Vung Tau', N'active', 2)
INSERT [dbo].[tblUsers] ([userID], [password], [name], [image], [address], [status], [roleID]) VALUES (N'user1', N'd4735e3a265e16eee03f59718b9b5d03019c07d8b6c51f90da3a666eec13ab35', N'customer', N'nau.jpg', N'TP HoChiMinh', N'active', 2)
INSERT [dbo].[tblUsers] ([userID], [password], [name], [image], [address], [status], [roleID]) VALUES (N'user2', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'abcqa', N'nau.jpg', N'TP HoChiMinh', N'active', 2)
INSERT [dbo].[tblUsers] ([userID], [password], [name], [image], [address], [status], [roleID]) VALUES (N'userr', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'bbnguyen', N'images.jpg', N'TPHoChiMinh', N'active', 2)
INSERT [dbo].[tblUsers] ([userID], [password], [name], [image], [address], [status], [roleID]) VALUES (N'vana', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'nguyenvana', N'images.png', N'bariavungtau', N'active', 2)
GO
ALTER TABLE [dbo].[tblPromotion] ADD  CONSTRAINT [DF_tblPromotion_rank]  DEFAULT ((5)) FOR [rank]
GO
ALTER TABLE [dbo].[tblPromotion] ADD  CONSTRAINT [DF_tblPromotion_dateAdd]  DEFAULT (getdate()) FOR [dateAdd]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_status]  DEFAULT ('active') FOR [status]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_roleID]  DEFAULT ((2)) FOR [roleID]
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblUsers_tblRole] FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRole] ([roleID])
GO
ALTER TABLE [dbo].[tblUsers] CHECK CONSTRAINT [FK_tblUsers_tblRole]
GO
USE [master]
GO
ALTER DATABASE [LabWeb2] SET  READ_WRITE 
GO
