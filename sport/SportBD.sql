USE [master]
GO
/****** Object:  Database [SprotGPO]    Script Date: 27.04.2024 20:33:47 ******/
CREATE DATABASE [SprotGPO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SprotGPO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SprotGPO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SprotGPO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SprotGPO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SprotGPO] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SprotGPO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SprotGPO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SprotGPO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SprotGPO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SprotGPO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SprotGPO] SET ARITHABORT OFF 
GO
ALTER DATABASE [SprotGPO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SprotGPO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SprotGPO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SprotGPO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SprotGPO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SprotGPO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SprotGPO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SprotGPO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SprotGPO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SprotGPO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SprotGPO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SprotGPO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SprotGPO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SprotGPO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SprotGPO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SprotGPO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SprotGPO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SprotGPO] SET RECOVERY FULL 
GO
ALTER DATABASE [SprotGPO] SET  MULTI_USER 
GO
ALTER DATABASE [SprotGPO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SprotGPO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SprotGPO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SprotGPO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SprotGPO] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SprotGPO', N'ON'
GO
ALTER DATABASE [SprotGPO] SET QUERY_STORE = OFF
GO
USE [SprotGPO]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SprotGPO]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27.04.2024 20:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[article] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Unit of measurement] [nvarchar](255) NULL,
	[Cost] [float] NULL,
	[Max Discount] [float] NULL,
	[Manufacturer] [nvarchar](255) NULL,
	[The supplier] [nvarchar](255) NULL,
	[category] [nvarchar](255) NULL,
	[Discount] [float] NULL,
	[Count in stock] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Product_user]    Script Date: 27.04.2024 20:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Product_user]
AS
SELECT        article AS Артикль, Name AS Название, Cost AS Цена, Manufacturer AS Производитель, [The supplier] AS Поставщик, category AS Категория, Discount AS Скидка, Description AS Описание, 
                         [Count in stock] AS Количество
FROM            dbo.Product
GO
/****** Object:  Table [dbo].[Order]    Script Date: 27.04.2024 20:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id_order] [int] IDENTITY(1,1) NOT NULL,
	[Id_Pick_up_point] [int] NULL,
	[Id_user] [int] NULL,
	[Data_order] [datetime] NULL,
	[Data_delivery] [datetime] NULL,
	[Code_delivery] [int] NULL,
	[Status] [nvarchar](255) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_product]    Script Date: 27.04.2024 20:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_product](
	[order] [int] NOT NULL,
	[Product] [nvarchar](255) NOT NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_Order_product_1] PRIMARY KEY CLUSTERED 
(
	[order] ASC,
	[Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pick_up_point]    Script Date: 27.04.2024 20:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pick_up_point](
	[Id_Pick_Up_point] [int] IDENTITY(1,1) NOT NULL,
	[Pick_Up_point] [nvarchar](255) NULL,
 CONSTRAINT [PK_Pick_up_point] PRIMARY KEY CLUSTERED 
(
	[Id_Pick_Up_point] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 27.04.2024 20:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id_Role] [int] IDENTITY(1,1) NOT NULL,
	[role] [nchar](20) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 27.04.2024 20:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id_user] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Lastname] [nvarchar](255) NULL,
	[Login] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id_order], [Id_Pick_up_point], [Id_user], [Data_order], [Data_delivery], [Code_delivery], [Status]) VALUES (1, 18, 7, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime), 401, N'Новый ')
INSERT [dbo].[Order] ([id_order], [Id_Pick_up_point], [Id_user], [Data_order], [Data_delivery], [Code_delivery], [Status]) VALUES (2, 20, 8, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 402, N'Новый ')
INSERT [dbo].[Order] ([id_order], [Id_Pick_up_point], [Id_user], [Data_order], [Data_delivery], [Code_delivery], [Status]) VALUES (3, 20, 9, CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 403, N'Завершен')
INSERT [dbo].[Order] ([id_order], [Id_Pick_up_point], [Id_user], [Data_order], [Data_delivery], [Code_delivery], [Status]) VALUES (4, 22, 10, CAST(N'2022-05-18T00:00:00.000' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), 404, N'Новый ')
INSERT [dbo].[Order] ([id_order], [Id_Pick_up_point], [Id_user], [Data_order], [Data_delivery], [Code_delivery], [Status]) VALUES (5, 22, NULL, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 405, N'Новый ')
INSERT [dbo].[Order] ([id_order], [Id_Pick_up_point], [Id_user], [Data_order], [Data_delivery], [Code_delivery], [Status]) VALUES (6, 16, NULL, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 406, N'Новый ')
INSERT [dbo].[Order] ([id_order], [Id_Pick_up_point], [Id_user], [Data_order], [Data_delivery], [Code_delivery], [Status]) VALUES (7, 16, NULL, CAST(N'2022-05-21T00:00:00.000' AS DateTime), CAST(N'2022-05-27T00:00:00.000' AS DateTime), 407, N'Завершен')
INSERT [dbo].[Order] ([id_order], [Id_Pick_up_point], [Id_user], [Data_order], [Data_delivery], [Code_delivery], [Status]) VALUES (8, 18, NULL, CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 408, N'Завершен')
INSERT [dbo].[Order] ([id_order], [Id_Pick_up_point], [Id_user], [Data_order], [Data_delivery], [Code_delivery], [Status]) VALUES (9, 24, NULL, CAST(N'2022-05-23T00:00:00.000' AS DateTime), CAST(N'2022-05-29T00:00:00.000' AS DateTime), 409, N'Новый ')
INSERT [dbo].[Order] ([id_order], [Id_Pick_up_point], [Id_user], [Data_order], [Data_delivery], [Code_delivery], [Status]) VALUES (10, 24, NULL, CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 410, N'Завершен')
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (1, N'G598Y6', 2)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (1, N'А112Т4', 2)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (2, N'D830R5', 3)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (2, N'F746E6', 3)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (3, N'D648N7', 10)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (3, N'F735B6', 10)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (4, N'E324U7', 1)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (4, N'F937G4', 1)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (5, N'D038G6', 10)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (5, N'N483G5', 10)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (6, N'C324S5', 2)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (6, N'G480F5', 2)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (7, N'J4DF5E', 1)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (7, N'V312R4', 1)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (8, N'G522B5', 3)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (8, N'K432G6', 3)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (9, N'F047J7', 1)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (9, N'S374B5', 1)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (10, N'D927K3', 5)
INSERT [dbo].[Order_product] ([order], [Product], [Count]) VALUES (10, N'N836R5', 5)
SET IDENTITY_INSERT [dbo].[Pick_up_point] ON 

INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (1, N'344288, г. Дубна, ул. Чехова, 1')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (2, N'614164, г.Дубна,  ул. Степная, 30')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (3, N'394242, г. Дубна, ул. Коммунистическая, 43')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (4, N'660540, г. Дубна, ул. Солнечная, 25')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (5, N'125837, г. Дубна, ул. Шоссейная, 40')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (6, N'125703, г. Дубна, ул. Партизанская, 49')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (7, N'625283, г. Дубна, ул. Победы, 46')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (8, N'614611, г. Дубна, ул. Молодежная, 50')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (9, N'454311, г.Дубна, ул. Новая, 19')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (10, N'660007, г.Дубна, ул. Октябрьская, 19')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (11, N'603036, г. Дубна, ул. Садовая, 4')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (12, N'450983, г.Дубна, ул. Комсомольская, 26')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (13, N'394782, г. Дубна, ул. Чехова, 3')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (14, N'603002, г. Дубна, ул. Дзержинского, 28')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (15, N'450558, г. Дубна, ул. Набережная, 30')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (16, N'394060, г.Дубна, ул. Фрунзе, 43')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (17, N'410661, г. Дубна, ул. Школьная, 50')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (18, N'625590, г. Дубна, ул. Коммунистическая, 20')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (19, N'625683, г. Дубна, ул. 8 Марта')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (20, N'400562, г. Дубна, ул. Зеленая, 32')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (21, N'614510, г. Дубна, ул. Маяковского, 47')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (22, N'410542, г. Дубна, ул. Светлая, 46')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (23, N'620839, г. Дубна, ул. Цветочная, 8')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (24, N'443890, г. Дубна, ул. Коммунистическая, 1')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (25, N'603379, г. Дубна, ул. Спортивная, 46')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (26, N'603721, г. Дубна, ул. Гоголя, 41')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (27, N'410172, г. Дубна, ул. Северная, 13')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (28, N'420151, г. Дубна, ул. Вишневая, 32')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (29, N'125061, г. Дубна, ул. Подгорная, 8')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (30, N'630370, г. Дубна, ул. Шоссейная, 24')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (31, N'614753, г. Дубна, ул. Полевая, 35')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (32, N'426030, г. Дубна, ул. Маяковского, 44')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (33, N'450375, г. Дубна ул. Клубная, 44')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (34, N'625560, г. Дубна, ул. Некрасова, 12')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (35, N'630201, г. Дубна, ул. Комсомольская, 17')
INSERT [dbo].[Pick_up_point] ([Id_Pick_Up_point], [Pick_Up_point]) VALUES (36, N'190949, г. Дубна, ул. Мичурина, 26')
SET IDENTITY_INSERT [dbo].[Pick_up_point] OFF
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'B538G6', N'Спортивный костюм', N'шт.', 839, 5, N'playToday', N'Спортмастер', N'Одежда', 3, 17, N'Спортивный костюм playToday (футболка + шорты)', N'B538G6.jpg')
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'C324S5', N'Шлем', N'шт.', 4000, 10, N'Salomon', N'Декатлон', N'Спортивный инвентарь', 5, 16, N'Шлем г.л./сноуб. Salomon Grom р.:KS черный (L40836800)', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'D038G6', N'Лыжный комплект', N'шт.', 3000, 30, N'Nordway', N'Декатлон', N'Спортивный инвентарь', 4, 23, N'Лыжный комплект беговые NORDWAY XC Classic, 45-45-45мм, 160см', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'D648N7', N'Набор для хоккея', N'шт.', 350, 10, N'Совтехстром', N'Декатлон', N'Спортивный инвентарь', 4, 7, N'Набор для хоккея Совтехстром', N'D648N7.jpg')
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'D830R5', N'Тренажер прыжков', N'шт.', 1120, 15, N'Moby Kids', N'Спортмастер', N'Спортивный инвентарь', 4, 8, N'Тренажер для прыжков Moby Kids Moby-Jumper со счетчиком', N'D830R5.jpg')
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'D893W4', N'Мяч', N'шт.', 900, 5, N'Demix', N'Спортмастер', N'Спортивный инвентарь', 2, 5, N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'D927K3', N'Перчатки ', N'шт.', 660, 15, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 4, 3, N'Перчатки Starfit SU-125 атлетические S черный', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'E324U7', N'Велотренажер', N'шт.', 6480, 25, N'DFC', N'Спортмастер', N'Спортивный инвентарь', 5, 5, N'Велотренажер двойной DFC B804 dual bike', N'E324U7.jpg')
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'F047J7', N'Коврик', N'шт.', 720, 15, N'Bradex', N'Спортмастер', N'Спортивный инвентарь', 5, 11, N'Коврик Bradex для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'F687G5', N'Защита голени', N'шт.', 1900, 15, N'Green Hill', N'Спортмастер', N'Спортивный инвентарь', 4, 6, N'Защита голени GREEN HILL Panther, L, синий/черный', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'F735B6', N'Игровой набор', N'шт.', 320, 15, N'Совтехстром', N'Декатлон', N'Спортивный инвентарь', 2, 9, N'Игровой набор Совтехстром Кегли и шары', N'F735B6.jpg')
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'F746E6', N'Шведская стенка', N'шт.', 9900, 10, N'ROMANA Next', N'Декатлон', N'Спортивный инвентарь', 3, 5, N'Шведская стенка ROMANA Next, pastel', N'F746E6.jpg')
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'F937G4', N'Игровой набор', N'шт.', 480, 10, N'Abtoys', N'Спортмастер', N'Спортивный инвентарь', 4, 12, N'Набор Abtoys Бадминтон и теннис ', N'F937G4.jpg')
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'G403T5', N'Тюбинг', N'шт.', 1450, 15, N'Nordway', N'Спортмастер', N'Спортивный инвентарь', 4, 13, N'Тюбинг Nordway, 73 см', N'G403T5.jpg')
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'G480F5', N'Ролики', N'шт.', 1600, 15, N'Ridex', N'Спортмастер', N'Спортивный инвентарь', 4, 7, N'Коньки роликовые Ridex Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'G522B5', N'Ласты', N'шт.', 1980, 15, N'Colton', N'Декатлон', N'Спортивный инвентарь', 3, 6, N'Ласты Colton CF-02 для плавания р.:33-34 серый/голубой', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'G598Y6', N'Спортивный мат', N'шт.', 2390, 15, N'Perfetto Sport', N'Декатлон', N'Спортивный инвентарь', 2, 16, N'Спортивный мат 100x100x10 см Perfetto Sport № 3 бежевый', N'G598Y6.jpg')
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'G873H4', N'Велосипед', N'шт.', 14930, 5, N'SKIF', N'Спортмастер', N'Спортивный инвентарь', 4, 6, N'Велосипед SKIF 29 Disc (2021), горный (взрослый), рама: 17", колеса: 29", темно-серый', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'J4DF5E', N'Насос', N'шт.', 300, 5, N'Molten', N'Спортмастер', N'Спортивный инвентарь', 4, 12, N'Насос Molten HP-18-B для мячей мультиколор', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'J532D4', N'Перчатки для карате', N'шт.', 1050, 15, N'Green Hill', N'Спортмастер', N'Спортивный инвентарь', 3, 5, N'Перчатки для каратэ Green Hill KMС-6083 L красный', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'K432G6', N'Шапочка для плавания', N'шт.', 440, 25, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 5, 17, N'Шапочка для плавания Atemi PU 140 ткань с покрытием желтый', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'K937A5', N'Гиря', N'шт.', 890, 5, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 4, 10, N'Гиря Starfit ГМБ4 мягкое 4кг синий/оранжевый', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'N483G5', N'Клюшка', N'шт.', 1299, 10, N'Nordway', N'Декатлон', N'Спортивный инвентарь', 3, 4, N'Клюшка Nordway NDW300 (2019/2020) SR лев. 19 150см', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'N836R5', N'Коньки', N'шт.', 2000, 10, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 3, 16, N'Коньки ATEMI AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'N892G6', N'Очки для плавания', N'шт.', 500, 5, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 5, 14, N'Очки для плавания Atemi N8401 синий', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'S374B5', N'Ролик для йоги', N'шт.', 700, 10, N'Bradex', N'Спортмастер', N'Спортивный инвентарь', 3, 12, N'Ролик для йоги Bradex Туба d=14см ш.:33см оранжевый', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'V312R4', N'Мяч', N'шт.', 4150, 20, N'Mikasa', N'Декатлон', N'Спортивный инвентарь', 2, 5, N'Мяч волейбольный MIKASA VT370W, для зала, 5-й размер, желтый/синий', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'V392H7', N'Степ-платформа', N'шт.', 4790, 10, N'Starfit', N'Спортмастер', N'Спортивный инвентарь', 3, 15, N'Степ-платформа Starfit SP-204 серый/черный', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'V423D4', N'Штанга', N'шт.', 5600, 10, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 3, 8, N'Штанга Starfit BB-401 30кг пласт. черный ', NULL)
INSERT [dbo].[Product] ([article], [Name], [Unit of measurement], [Cost], [Max Discount], [Manufacturer], [The supplier], [category], [Discount], [Count in stock], [Description], [Image]) VALUES (N'А112Т4', N'Боксерская груша', N'шт.', 778, 30, N'X-Match', N'Спортмастер', N'Спортивный инвентарь', 5, 6, N'Боксерская груша X-Match черная', N'А112Т4.jpg')
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id_Role], [role]) VALUES (1, N'Администратор
     ')
INSERT [dbo].[Role] ([Id_Role], [role]) VALUES (2, N'Менеджер
          ')
INSERT [dbo].[Role] ([Id_Role], [role]) VALUES (3, N'Клиент
            ')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id_user], [Surname], [Name], [Lastname], [Login], [Password], [Role]) VALUES (1, N'Пахомова', N'Аиша', N'Анатольевна', N'm4ic8j5qgstw@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([Id_user], [Surname], [Name], [Lastname], [Login], [Password], [Role]) VALUES (2, N'Жуков', N'Роман', N'Богданович', N'd43zfg9tlsyv@gmail.com', N'uzWC67', 1)
INSERT [dbo].[User] ([Id_user], [Surname], [Name], [Lastname], [Login], [Password], [Role]) VALUES (3, N'Киселева', N'Анастасия', N'Максимовна', N'8ohgisf6k45w@outlook.com', N'8ntwUp', 1)
INSERT [dbo].[User] ([Id_user], [Surname], [Name], [Lastname], [Login], [Password], [Role]) VALUES (4, N'Григорьева', N'Арина', N'Арсентьевна', N'hi1brwj46czx@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([Id_user], [Surname], [Name], [Lastname], [Login], [Password], [Role]) VALUES (5, N'Иванов', N'Лев', N'Михайлович', N'fvkbcamhlj52@gmail.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([Id_user], [Surname], [Name], [Lastname], [Login], [Password], [Role]) VALUES (6, N'Григорьев', N'Лев', N'Давидович', N'9qxnce8jwruv@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([Id_user], [Surname], [Name], [Lastname], [Login], [Password], [Role]) VALUES (7, N'Поляков', N'Степан', N'Егорович', N'dotiex942p1r@gmail.com', N'LdNyos', 3)
INSERT [dbo].[User] ([Id_user], [Surname], [Name], [Lastname], [Login], [Password], [Role]) VALUES (8, N'Леонова', N'Алиса', N'Кирилловна', N'n0bmi2h1xral@tutanota.com', N'gynQMT', 3)
INSERT [dbo].[User] ([Id_user], [Surname], [Name], [Lastname], [Login], [Password], [Role]) VALUES (9, N'Яковлев', N'Платон', N'Константинович', N'sfm3t278kdvz@yahoo.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([Id_user], [Surname], [Name], [Lastname], [Login], [Password], [Role]) VALUES (10, N'Ковалева', N'Ева', N'Яковлевна', N'ilb8rdut0v7e@mail.com', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Pick_up_point] FOREIGN KEY([Id_Pick_up_point])
REFERENCES [dbo].[Pick_up_point] ([Id_Pick_Up_point])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Pick_up_point]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([Id_user])
REFERENCES [dbo].[User] ([Id_user])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order_product]  WITH CHECK ADD  CONSTRAINT [ap] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([article])
GO
ALTER TABLE [dbo].[Order_product] CHECK CONSTRAINT [ap]
GO
ALTER TABLE [dbo].[Order_product]  WITH CHECK ADD  CONSTRAINT [FK_Order_product_Order] FOREIGN KEY([order])
REFERENCES [dbo].[Order] ([id_order])
GO
ALTER TABLE [dbo].[Order_product] CHECK CONSTRAINT [FK_Order_product_Order]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([Id_Role])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  StoredProcedure [dbo].[login]    Script Date: 27.04.2024 20:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[login]
@login nvarchar (50),
@Password nvarchar (50)
AS
BEGIN
	select * from [user] where [Login] = @login and [Password] = @Password

END
GO
/****** Object:  StoredProcedure [dbo].[select_product]    Script Date: 27.04.2024 20:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_product]
@article nchar(10)
AS
BEGIN
Select * from  [dbo].[Product_user] Where  [Артикль] = @article
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 8
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Product_user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Product_user'
GO
USE [master]
GO
ALTER DATABASE [SprotGPO] SET  READ_WRITE 
GO
