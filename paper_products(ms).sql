USE [10180015]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[AgentTypeID] [int] NOT NULL,
	[Address] [nvarchar](300) NULL,
	[INN] [varchar](12) NOT NULL,
	[KPP] [varchar](9) NULL,
	[DirectorName] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Logo] [nvarchar](100) NULL,
	[Priority] [int] NOT NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentPriorityHistory]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentPriorityHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AgentID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[PriorityValue] [int] NOT NULL,
 CONSTRAINT [PK_AgentPriorityHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentType]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_AgentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[CountInPack] [int] NOT NULL,
	[Unit] [nvarchar](10) NOT NULL,
	[CountInStock] [float] NULL,
	[MinCount] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Cost] [decimal](10, 2) NOT NULL,
	[Image] [nvarchar](100) NULL,
	[MaterialTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialCountHistory]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialCountHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[CountValue] [float] NOT NULL,
 CONSTRAINT [PK_MaterialCountHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialSupplier]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialSupplier](
	[MaterialID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_MaterialSupplier] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC,
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DefectedPercent] [float] NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ProductTypeID] [int] NULL,
	[ArticleNumber] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](100) NULL,
	[ProductionPersonCount] [int] NULL,
	[ProductionWorkshopNumber] [int] NULL,
	[MinCostForAgent] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCostHistory]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCostHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[CostValue] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_ProductCostHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[ProductID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[Count] [float] NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AgentID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[SaleDate] [date] NOT NULL,
	[ProductCount] [int] NOT NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DefectedPercent] [float] NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Address] [nvarchar](300) NULL,
	[AgentID] [int] NOT NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 15.09.2021 15:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[INN] [varchar](12) NOT NULL,
	[StartDate] [date] NOT NULL,
	[QualityRating] [int] NULL,
	[SupplierType] [nvarchar](20) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (51, N'Спрессованный материал серый 0x2', 5, N' м', 140, 49, N'Материал', CAST(33128.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (52, N'Рулон бумаги зеленый 1x1', 3, N' м', 634, 36, N'Материал', CAST(26841.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (53, N'Спрессованный материал розовый 2x1', 8, N' м', 636, 21, N'Материал', CAST(52606.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (54, N'Гранулы для бумаги розовый 2x2', 10, N' л', 661, 16, N'Материал', CAST(10608.00 AS Decimal(10, 2)), N'\picture.png', 3)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (55, N'Спрессованный материал белый 1x1', 7, N' кг', 843, 16, N'Материал', CAST(43440.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (56, N'Рулон бумаги белый 1x0', 1, N' м', 501, 49, N'Материал', CAST(15833.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (57, N'Переработка бумаги синий 0x3', 9, N' м', 958, 32, N'Материал', CAST(14180.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (58, N'Рулон бумаги цветной 2x0', 3, N' м', 386, 46, N'Материал', CAST(35544.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (59, N'Рулон бумаги зеленый 2x2', 8, N' кг', 593, 20, N'Материал', CAST(55016.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (60, N'Рулон бумаги белый 3x2', 4, N' кг', 16, 31, N'Материал', CAST(53759.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (61, N'Переработка бумаги серый 3x3', 10, N' м', 89, 20, N'Материал', CAST(49391.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (62, N'Гранулы для бумаги синий 1x2', 6, N' л', 112, 34, N'Материал', CAST(25624.00 AS Decimal(10, 2)), N'\picture.png', 3)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (63, N'Рулон бумаги серый 3x3', 3, N' м', 596, 8, N'Материал', CAST(50247.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (64, N'Спрессованный материал цветной 1x3', 3, N' м', 772, 40, N'Материал', CAST(51672.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (65, N'Рулон бумаги синий 2x2', 6, N' кг', 363, 47, N'Материал', CAST(38450.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (66, N'Гранулы для бумаги розовый 0x3', 4, N' л', 379, 41, N'Материал', CAST(3868.00 AS Decimal(10, 2)), N'\picture.png', 3)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (67, N'Переработка бумаги цветной 1x3', 6, N' кг', 32, 34, N'Материал', CAST(37930.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (68, N'Гранулы для бумаги цветной 0x1', 5, N' л', 759, 28, N'Материал', CAST(9216.00 AS Decimal(10, 2)), N'\picture.png', 3)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (69, N'Рулон бумаги цветной 1x2', 10, N' м', 246, 37, N'Материал', CAST(5016.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (70, N'Переработка бумаги серый 1x2', 8, N' м', 516, 49, N'Материал', CAST(35981.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (71, N'Спрессованный материал синий 0x2', 3, N' кг', 514, 40, N'Материал', CAST(6555.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (72, N'Переработка бумаги синий 1x2', 4, N' м', 81, 32, N'Материал', CAST(47873.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (73, N'Спрессованный материал цветной 1x2', 1, N' м', 429, 47, N'Материал', CAST(15802.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (74, N'Рулон бумаги розовый 2x1', 1, N' м', 349, 9, N'Материал', CAST(36163.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (75, N'Рулон бумаги белый 3x3', 2, N' кг', 201, 46, N'Материал', CAST(51261.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (76, N'Рулон бумаги цветной 2x2', 10, N' кг', 534, 46, N'Материал', CAST(50776.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (77, N'Спрессованный материал розовый 2x3', 3, N' м', 552, 7, N'Материал', CAST(4657.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (78, N'Рулон бумаги розовый 3x2', 9, N' м', 144, 41, N'Материал', CAST(51776.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (79, N'Переработка бумаги синий 0x1', 7, N' м', 97, 30, N'Материал', CAST(47937.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (80, N'Спрессованный материал розовый 1x2', 7, N' м', 509, 26, N'Материал', CAST(10604.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (81, N'Рулон бумаги цветной 1x3', 10, N' кг', 149, 13, N'Материал', CAST(22724.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (82, N'Рулон бумаги синий 3x2', 9, N' м', 508, 16, N'Материал', CAST(25561.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (83, N'Рулон бумаги зеленый 2x3', 2, N' м', 181, 35, N'Материал', CAST(45388.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (84, N'Гранулы для бумаги розовый 0x2', 7, N' кг', 37, 50, N'Материал', CAST(17227.00 AS Decimal(10, 2)), N'\picture.png', 3)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (85, N'Переработка бумаги цветной 0x0', 9, N' м', 508, 19, N'Материал', CAST(51147.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (86, N'Переработка бумаги серый 0x2', 3, N' м', 167, 17, N'Материал', CAST(10248.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (87, N'Гранулы для бумаги цветной 0x3', 10, N' кг', 962, 33, N'Материал', CAST(35922.00 AS Decimal(10, 2)), N'\picture.png', 3)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (88, N'Рулон бумаги зеленый 3x3', 3, N' м', 861, 45, N'Материал', CAST(37283.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (89, N'Рулон бумаги белый 0x3', 2, N' м', 933, 50, N'Материал', CAST(7253.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (90, N'Рулон бумаги синий 3x1', 3, N' м', 720, 11, N'Материал', CAST(44675.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (91, N'Спрессованный материал белый 3x3', 8, N' м', 942, 12, N'Материал', CAST(17600.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (92, N'Рулон бумаги белый 1x3', 2, N' кг', 382, 10, N'Материал', CAST(32770.00 AS Decimal(10, 2)), N'\picture.png', 2)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (93, N'Переработка бумаги белый 3x0', 10, N' м', 247, 11, N'Материал', CAST(39500.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (94, N'Гранулы для бумаги синий 1x3', 10, N' л', 841, 18, N'Материал', CAST(38700.00 AS Decimal(10, 2)), N'\picture.png', 3)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (95, N'Спрессованный материал синий 3x1', 10, N' м', 270, 50, N'Материал', CAST(38809.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (96, N'Спрессованный материал цветной 0x0', 6, N' м', 754, 24, N'Материал', CAST(4611.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (97, N'Переработка бумаги цветной 0x1', 8, N' м', 833, 34, N'Материал', CAST(53875.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (98, N'Спрессованный материал цветной 1x0', 8, N' м', 856, 26, N'Материал', CAST(12817.00 AS Decimal(10, 2)), N'\picture.png', 1)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (99, N'Переработка бумаги синий 0x2', 9, N' кг', 709, 47, N'Материал', CAST(23157.00 AS Decimal(10, 2)), N'\picture.png', 4)
INSERT [dbo].[Material] ([ID], [Title], [CountInPack], [Unit], [CountInStock], [MinCount], [Description], [Cost], [Image], [MaterialTypeID]) VALUES (100, N'Переработка бумаги белый 2x0', 5, N' м', 794, 17, N'Материал', CAST(21637.00 AS Decimal(10, 2)), N'\picture.png', 4)
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (1, N' Пресс', 0.1)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (2, N' Рулон', 0.1)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (3, N' Гранулы', 0.1)
INSERT [dbo].[MaterialType] ([ID], [Title], [DefectedPercent]) VALUES (4, N' Нарезка', 0.1)
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (201, N'Полотенце 28М Клубника', 1, N'334385', N'Продукт', N'\products\paper_20.jpg', 2, 6, CAST(9208.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (202, N'Набор 24М Дыня', 2, N'337632', N'Продукт', N'\picture.png', 5, 5, CAST(11471.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (203, N'Набор 9М Бриз', 2, N'259548', N'Продукт', N'\picture.png', 4, 5, CAST(2317.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (204, N'Набор 50М Клубника', 3, N'278721', N'Продукт', N'\picture.png', 3, 1, CAST(14220.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (205, N'Полотенце 24М Дыня', 2, N'264493', N'Продукт', N'\picture.png', 5, 10, CAST(10479.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (206, N'Бумага 21М Дыня', 4, N'366160', N'Продукт', N'\products\paper_2.jpg', 1, 2, CAST(11064.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (207, N'Полотенце 37М Клубника', 5, N'292358', N'Продукт', N'\picture.png', 4, 2, CAST(3961.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (208, N'Набор 6М Бриз', 5, N'289779', N'Продукт', N'\picture.png', 1, 6, CAST(14154.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (209, N'Бумага 37М Клубника', 3, N'442634', N'Продукт', N'\products\paper_14.jpg', 5, 4, CAST(12664.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (210, N'Набор 41М Дыня', 5, N'385037', N'Продукт', N'\products\paper_21.jpg', 5, 9, CAST(3295.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (211, N'Бумага 26М Ваниль', 4, N'444337', N'Продукт', N'\picture.png', 4, 4, CAST(3007.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (212, N'Бумага 50М Ваниль', 3, N'454479', N'Продукт', N'\picture.png', 3, 9, CAST(3163.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (213, N'Набор 25М Бриз', 5, N'434113', N'Продукт', N'\picture.png', 4, 4, CAST(13047.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (214, N'Бумага 32М Бриз', 3, N'379800', N'Продукт', N'\picture.png', 1, 7, CAST(6832.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (215, N'Полотенце 41М Дыня', 3, N'239349', N'Продукт', N'\picture.png', 2, 9, CAST(6238.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (216, N'Бумага 9М Ваниль', 3, N'446348', N'Продукт', N'\picture.png', 3, 1, CAST(13568.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (217, N'Бумага 3М Бриз', 2, N'260492', N'Продукт', N'\picture.png', 1, 9, CAST(8278.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (218, N'Бумага 5М Дыня', 5, N'256862', N'Продукт', N'\products\paper_5.jpg', 5, 5, CAST(3712.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (219, N'Полотенце 16М Ваниль', 4, N'259488', N'Продукт', N'\picture.png', 3, 6, CAST(10095.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (220, N'Бумага 44М Бриз', 5, N'422185', N'Продукт', N'\picture.png', 2, 5, CAST(6441.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (221, N'Набор 19М Дыня', 4, N'382063', N'Продукт', N'\picture.png', 1, 7, CAST(2373.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (222, N'Бумага 29М Клубника', 5, N'334943', N'Продукт', N'\picture.png', 1, 10, CAST(5997.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (223, N'Полотенце 27М Дыня', 2, N'238686', N'Продукт', N'\picture.png', 2, 2, CAST(7864.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (224, N'Набор 11М Дыня', 2, N'450659', N'Продукт', N'\products\paper_16.jpg', 3, 7, CAST(5956.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (225, N'Полотенце 48М Клубника', 4, N'292206', N'Продукт', N'\picture.png', 3, 3, CAST(9801.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (226, N'Полотенце 16М Бриз', 1, N'418298', N'Продукт', N'\picture.png', 2, 1, CAST(7342.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (227, N'Полотенце 14М Клубника', 2, N'309862', N'Продукт', N'\products\paper_17.jpg', 4, 8, CAST(10682.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (228, N'Полотенце 43М Клубника', 4, N'425641', N'Продукт', N'\picture.png', 2, 6, CAST(14151.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (229, N'Набор 19М Бриз', 3, N'277950', N'Продукт', N'\picture.png', 5, 9, CAST(9962.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (230, N'Набор 32М Клубника', 4, N'351062', N'Продукт', N'\picture.png', 3, 8, CAST(4450.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (231, N'Набор 26М Дыня', 2, N'279801', N'Продукт', N'\picture.png', 2, 1, CAST(4628.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (232, N'Бумага 15М Клубника', 2, N'449359', N'Продукт', N'\picture.png', 3, 7, CAST(10009.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (233, N'Полотенце 45М Бриз', 3, N'303994', N'Продукт', N'\products\paper_6.jpg', 2, 1, CAST(13081.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (234, N'Набор 50М Бриз', 2, N'414595', N'Продукт', N'\products\paper_8.jpg', 4, 6, CAST(10750.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (235, N'Набор 16М Дыня', 5, N'376834', N'Продукт', N'\picture.png', 4, 6, CAST(11927.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (236, N'Бумага 45М Бриз', 3, N'374276', N'Продукт', N'\picture.png', 3, 9, CAST(13605.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (237, N'Бумага 45М Клубника', 4, N'400484', N'Продукт', N'\picture.png', 3, 4, CAST(3475.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (238, N'Бумага 16М Дыня', 4, N'262257', N'Продукт', N'\picture.png', 5, 2, CAST(9107.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (239, N'Набор 40М Дыня', 3, N'346154', N'Продукт', N'\picture.png', 4, 8, CAST(3427.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (240, N'Бумага 33М Бриз', 2, N'347239', N'Продукт', N'\picture.png', 5, 9, CAST(13767.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (241, N'Полотенце 45М Клубника', 1, N'352034', N'Продукт', N'\picture.png', 2, 5, CAST(11939.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (242, N'Набор 43М Клубника', 5, N'443538', N'Продукт', N'\picture.png', 1, 10, CAST(13786.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (243, N'Набор 34М Ваниль', 4, N'316033', N'Продукт', N'\picture.png', 1, 4, CAST(13533.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (244, N'Бумага 32М Дыня', 5, N'268393', N'Продукт', N'\picture.png', 4, 3, CAST(7424.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (245, N'Бумага 12М Бриз', 5, N'426804', N'Продукт', N'\picture.png', 1, 4, CAST(10703.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (246, N'Полотенце 6М Ваниль', 2, N'324941', N'Продукт', N'\picture.png', 1, 2, CAST(5594.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (247, N'Полотенце 47М Клубника', 5, N'378723', N'Продукт', N'\picture.png', 4, 2, CAST(3871.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (248, N'Полотенце 15М Бриз', 5, N'365615', N'Продукт', N'\picture.png', 1, 6, CAST(13013.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (249, N'Набор 9М Дыня', 5, N'440942', N'Продукт', N'\picture.png', 3, 4, CAST(2580.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (250, N'Набор 17М Клубника', 4, N'441239', N'Продукт', N'\picture.png', 2, 10, CAST(14863.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (251, N'Набор 5М Бриз', 2, N'278382', N'Продукт', N'\picture.png', 3, 9, CAST(7325.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (252, N'Набор 29М Ваниль', 1, N'344868', N'Продукт', N'\products\paper_4.jpg', 1, 9, CAST(7618.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (253, N'Набор 31М Дыня', 5, N'449401', N'Продукт', N'\picture.png', 5, 10, CAST(5236.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (254, N'Набор 45М Бриз', 2, N'349802', N'Продукт', N'\picture.png', 1, 8, CAST(12040.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (255, N'Бумага 13М Дыня', 1, N'348651', N'Продукт', N'\picture.png', 3, 8, CAST(3477.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (256, N'Набор 24М Клубника', 3, N'296007', N'Продукт', N'\picture.png', 2, 3, CAST(14162.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (257, N'Набор 10М Дыня', 5, N'431234', N'Продукт', N'\products\paper_22.jpg', 4, 9, CAST(3816.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (258, N'Бумага 12М Клубника', 5, N'456129', N'Продукт', N'\products\paper_1.jpg', 3, 4, CAST(6467.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (259, N'Полотенце 11М Дыня', 4, N'400418', N'Продукт', N'\products\paper_25.jpg', 2, 7, CAST(11660.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (260, N'Набор 42М Дыня', 3, N'390914', N'Продукт', N'\products\paper_13.jpg', 5, 10, CAST(14344.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (261, N'Бумага 5М Бриз', 5, N'345239', N'Продукт', N'\picture.png', 1, 8, CAST(9243.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (262, N'Набор 14М Дыня', 1, N'373939', N'Продукт', N'\picture.png', 2, 3, CAST(3382.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (263, N'Бумага 33М Клубника', 1, N'252485', N'Продукт', N'\products\paper_0.jpg', 3, 6, CAST(4240.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (264, N'Набор 34М Клубника', 2, N'381110', N'Продукт', N'\picture.png', 3, 1, CAST(2372.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (265, N'Полотенце 14М Дыня', 2, N'331688', N'Продукт', N'\picture.png', 2, 8, CAST(10330.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (266, N'Бумага 40М Бриз', 2, N'326200', N'Продукт', N'\products\paper_19.jpg', 5, 1, CAST(12927.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (267, N'Бумага 20М Клубника', 5, N'253218', N'Продукт', N'\picture.png', 2, 6, CAST(11684.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (268, N'Бумага 50М Бриз', 3, N'340583', N'Продукт', N'\products\paper_15.jpg', 4, 7, CAST(6788.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (269, N'Полотенце 23М Ваниль', 1, N'437519', N'Продукт', N'\picture.png', 1, 10, CAST(3317.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (270, N'Набор 8М Дыня', 5, N'240580', N'Продукт', N'\picture.png', 5, 2, CAST(7465.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (271, N'Бумага 10М Клубника', 2, N'275591', N'Продукт', N'\products\paper_7.jpg', 4, 8, CAST(13600.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (272, N'Набор 41М Клубника', 4, N'281425', N'Продукт', N'\products\paper_23.jpg', 4, 6, CAST(9908.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (273, N'Набор 10М Ваниль', 4, N'261465', N'Продукт', N'\products\paper_12.jpg', 5, 3, CAST(13028.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (274, N'Полотенце 17М Бриз', 2, N'309067', N'Продукт', N'\products\paper_24.jpg', 1, 6, CAST(13825.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (275, N'Полотенце 27М Ваниль', 2, N'278463', N'Продукт', N'\products\paper_10.jpg', 3, 5, CAST(3978.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (276, N'Полотенце 50М Ваниль', 1, N'310212', N'Продукт', N'\products\paper_11.jpg', 1, 10, CAST(13204.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (277, N'Набор 20М Бриз', 5, N'377042', N'Продукт', N'\products\paper_9.jpg', 5, 9, CAST(9227.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (278, N'Полотенце 47М Дыня', 4, N'294441', N'Продукт', N'\picture.png', 4, 5, CAST(11460.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (279, N'Бумага 29М Дыня', 1, N'332522', N'Продукт', N'\products\paper_18.jpg', 3, 6, CAST(5439.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (280, N'Полотенце 44М Ваниль', 5, N'357053', N'Продукт', N'\picture.png', 5, 1, CAST(3396.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (281, N'Полотенце 7М Ваниль', 3, N'397143', N'Продукт', N'\picture.png', 2, 9, CAST(2868.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (282, N'Бумага 49М Бриз', 1, N'414339', N'Продукт', N'\picture.png', 1, 6, CAST(10786.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (283, N'Полотенце 7М Бриз', 2, N'350515', N'Продукт', N'\picture.png', 2, 2, CAST(4986.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (284, N'Полотенце 25М Бриз', 1, N'258695', N'Продукт', N'\picture.png', 1, 8, CAST(3631.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (285, N'Полотенце 17М Ваниль', 4, N'403054', N'Продукт', N'\picture.png', 2, 9, CAST(5048.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (286, N'Бумага 14М Бриз', 3, N'310507', N'Продукт', N'\picture.png', 1, 3, CAST(7846.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (287, N'Набор 40М Бриз', 2, N'353930', N'Продукт', N'\picture.png', 2, 8, CAST(12767.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (288, N'Набор 22М Клубника', 1, N'360424', N'Продукт', N'\picture.png', 4, 3, CAST(13524.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (289, N'Бумага 13М Бриз', 2, N'349861', N'Продукт', N'\picture.png', 4, 6, CAST(3842.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (290, N'Бумага 7М Ваниль', 4, N'290729', N'Продукт', N'\picture.png', 4, 4, CAST(6934.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (291, N'Набор 24М Ваниль', 5, N'374263', N'Продукт', N'\picture.png', 5, 9, CAST(3907.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (292, N'Набор 43М Дыня', 1, N'330360', N'Продукт', N'\picture.png', 5, 4, CAST(5867.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (293, N'Полотенце 33М Бриз', 4, N'297840', N'Продукт', N'\picture.png', 4, 1, CAST(4611.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (294, N'Набор 12М Бриз', 3, N'349614', N'Продукт', N'\products\paper_3.jpg', 1, 7, CAST(2551.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (295, N'Бумага 38М Ваниль', 1, N'416066', N'Продукт', N'\picture.png', 2, 2, CAST(12175.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (296, N'Бумага 20М Бриз', 3, N'285792', N'Продукт', N'\picture.png', 3, 7, CAST(14370.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (297, N'Бумага 28М Дыня', 3, N'298632', N'Продукт', N'\picture.png', 4, 4, CAST(14671.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (298, N'Бумага 10М Дыня', 5, N'446103', N'Продукт', N'\picture.png', 1, 3, CAST(13975.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (299, N'Набор 22М Бриз', 3, N'443382', N'Продукт', N'\picture.png', 3, 5, CAST(4501.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Product] ([ID], [Title], [ProductTypeID], [ArticleNumber], [Description], [Image], [ProductionPersonCount], [ProductionWorkshopNumber], [MinCostForAgent]) VALUES (300, N'Набор 18М Ваниль', 1, N'331270', N'Продукт', N'\picture.png', 4, 8, CAST(11171.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (1, N'Три слоя', 0.1)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (2, N'Два слоя', 0.1)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (3, N'Детская', 0.1)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (4, N'Супер мягкая', 0.1)
INSERT [dbo].[ProductType] ([ID], [Title], [DefectedPercent]) VALUES (5, N'Один слой', 0.1)
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_AgentType] FOREIGN KEY([AgentTypeID])
REFERENCES [dbo].[AgentType] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_AgentType]
GO
ALTER TABLE [dbo].[AgentPriorityHistory]  WITH CHECK ADD  CONSTRAINT [FK_AgentPriorityHistory_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[AgentPriorityHistory] CHECK CONSTRAINT [FK_AgentPriorityHistory_Agent]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([MaterialTypeID])
REFERENCES [dbo].[MaterialType] ([ID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
ALTER TABLE [dbo].[MaterialCountHistory]  WITH CHECK ADD  CONSTRAINT [FK_MaterialCountHistory_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[MaterialCountHistory] CHECK CONSTRAINT [FK_MaterialCountHistory_Material]
GO
ALTER TABLE [dbo].[MaterialSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSupplier_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[MaterialSupplier] CHECK CONSTRAINT [FK_MaterialSupplier_Material]
GO
ALTER TABLE [dbo].[MaterialSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSupplier_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[MaterialSupplier] CHECK CONSTRAINT [FK_MaterialSupplier_Supplier]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[ProductCostHistory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCostHistory_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductCostHistory] CHECK CONSTRAINT [FK_ProductCostHistory_Product]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([ID])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Material]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Agent]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [FK_Shop_Agent]
GO
