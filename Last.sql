USE [FOOT]
GO
/****** Object:  Table [dbo].[_SIZE]    Script Date: 5/20/2019 10:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_SIZE](
	[ID_SIZE] [int] IDENTITY(1,1) NOT NULL,
	[SIZE_NAME] [char](10) NULL,
 CONSTRAINT [PK__SIZE] PRIMARY KEY CLUSTERED 
(
	[ID_SIZE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 5/20/2019 10:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[AD_NAME] [varchar](50) NOT NULL,
	[AD_PASS] [varchar](50) NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[AD_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BRAND]    Script Date: 5/20/2019 10:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BRAND](
	[ID_BRAND] [int] IDENTITY(1,1) NOT NULL,
	[BRAND_NAME] [char](10) NULL,
 CONSTRAINT [PK_BRAND] PRIMARY KEY CLUSTERED 
(
	[ID_BRAND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COLOR]    Script Date: 5/20/2019 10:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COLOR](
	[ID_COLOR] [int] IDENTITY(1,1) NOT NULL,
	[COLOR_NAME] [char](10) NULL,
 CONSTRAINT [PK_COLOR] PRIMARY KEY CLUSTERED 
(
	[ID_COLOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 5/20/2019 10:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[ID_CUSTOMER] [int] IDENTITY(1,1) NOT NULL,
	[CUSTOMER_NAME] [nvarchar](50) NULL,
	[ADDRESS] [nvarchar](50) NULL,
	[PHONE] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[USERNAME] [varchar](50) NULL,
	[PASS] [varchar](50) NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[ID_CUSTOMER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 5/20/2019 10:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[ID_ORDER] [int] IDENTITY(1,1) NOT NULL,
	[DATE_OD] [date] NULL,
	[ID_CUSTOMER] [int] NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED 
(
	[ID_ORDER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_DETAIL]    Script Date: 5/20/2019 10:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL](
	[ID] [int] NOT NULL,
	[ID_ORDER] [int] NOT NULL,
	[NUMBER] [int] NULL,
	[PRICE] [decimal](5, 2) NULL,
 CONSTRAINT [PK_ORDER_DETAIL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ID_ORDER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SHORES]    Script Date: 5/20/2019 10:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHORES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](200) NULL,
	[IMG] [varchar](50) NULL,
	[SL] [int] NULL,
	[ID_SIZE] [int] NULL,
	[ID_COLOR] [int] NULL,
	[ID_BRAND] [int] NULL,
	[ID_TYPE] [int] NULL,
	[DESCRIPTIONS] [nvarchar](max) NULL,
	[PRICE] [decimal](5, 2) NULL,
	[UPDATE_DAY] [date] NULL,
 CONSTRAINT [PK_SHORES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPE]    Script Date: 5/20/2019 10:38:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPE](
	[ID_TYPE] [int] IDENTITY(1,1) NOT NULL,
	[TYPE_NAME] [char](10) NULL,
 CONSTRAINT [PK_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[_SIZE] ON 

INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (1, N'7         ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (2, N'7.5       ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (3, N'8         ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (4, N'8.5       ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (5, N'9         ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (6, N'9.5       ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (7, N'10        ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (8, N'10.5      ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (9, N'11        ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (10, N'11.5      ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (11, N'12        ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (12, N'12.5      ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (13, N'13        ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (14, N'13.5      ')
INSERT [dbo].[_SIZE] ([ID_SIZE], [SIZE_NAME]) VALUES (15, N'14        ')
SET IDENTITY_INSERT [dbo].[_SIZE] OFF
INSERT [dbo].[ADMIN] ([AD_NAME], [AD_PASS]) VALUES (N'HTT', N'123456')
INSERT [dbo].[ADMIN] ([AD_NAME], [AD_PASS]) VALUES (N'MTH', N'123456')
INSERT [dbo].[ADMIN] ([AD_NAME], [AD_PASS]) VALUES (N'PVT', N'123456')
INSERT [dbo].[ADMIN] ([AD_NAME], [AD_PASS]) VALUES (N'TTH', N'123456')
SET IDENTITY_INSERT [dbo].[BRAND] ON 

INSERT [dbo].[BRAND] ([ID_BRAND], [BRAND_NAME]) VALUES (1, N'ADIDAS    ')
INSERT [dbo].[BRAND] ([ID_BRAND], [BRAND_NAME]) VALUES (2, N'NIKE      ')
INSERT [dbo].[BRAND] ([ID_BRAND], [BRAND_NAME]) VALUES (3, N'GUCCI     ')
INSERT [dbo].[BRAND] ([ID_BRAND], [BRAND_NAME]) VALUES (4, N'CONVERSE  ')
INSERT [dbo].[BRAND] ([ID_BRAND], [BRAND_NAME]) VALUES (5, N'PUMA      ')
SET IDENTITY_INSERT [dbo].[BRAND] OFF
SET IDENTITY_INSERT [dbo].[COLOR] ON 

INSERT [dbo].[COLOR] ([ID_COLOR], [COLOR_NAME]) VALUES (1, N'Black     ')
INSERT [dbo].[COLOR] ([ID_COLOR], [COLOR_NAME]) VALUES (2, N'White     ')
INSERT [dbo].[COLOR] ([ID_COLOR], [COLOR_NAME]) VALUES (3, N'Blue      ')
INSERT [dbo].[COLOR] ([ID_COLOR], [COLOR_NAME]) VALUES (4, N'Red       ')
INSERT [dbo].[COLOR] ([ID_COLOR], [COLOR_NAME]) VALUES (5, N'Green     ')
INSERT [dbo].[COLOR] ([ID_COLOR], [COLOR_NAME]) VALUES (6, N'Grey      ')
INSERT [dbo].[COLOR] ([ID_COLOR], [COLOR_NAME]) VALUES (7, N'Orange    ')
INSERT [dbo].[COLOR] ([ID_COLOR], [COLOR_NAME]) VALUES (8, N'Cream     ')
INSERT [dbo].[COLOR] ([ID_COLOR], [COLOR_NAME]) VALUES (9, N'Brown     ')
SET IDENTITY_INSERT [dbo].[COLOR] OFF
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON 

INSERT [dbo].[CUSTOMER] ([ID_CUSTOMER], [CUSTOMER_NAME], [ADDRESS], [PHONE], [EMAIL], [USERNAME], [PASS]) VALUES (1, N'Toàn', N'Hưng Yên', N'0357101100', N'toan@gmail.com', N'Toan', N'123456')
INSERT [dbo].[CUSTOMER] ([ID_CUSTOMER], [CUSTOMER_NAME], [ADDRESS], [PHONE], [EMAIL], [USERNAME], [PASS]) VALUES (2, N'Tùng', N'Mê Linh', N'0357101112', N'tung@gmail.com', N'Tung', N'123456')
INSERT [dbo].[CUSTOMER] ([ID_CUSTOMER], [CUSTOMER_NAME], [ADDRESS], [PHONE], [EMAIL], [USERNAME], [PASS]) VALUES (3, N'Trí', N'Hà Nội', N'0357101142', N'tri@gmail.com', N'Tri', N'123456')
INSERT [dbo].[CUSTOMER] ([ID_CUSTOMER], [CUSTOMER_NAME], [ADDRESS], [PHONE], [EMAIL], [USERNAME], [PASS]) VALUES (4, N'Vân', N'Nam Định', N'0357101176', N'van@gmail.com', N'Van', N'123456')
INSERT [dbo].[CUSTOMER] ([ID_CUSTOMER], [CUSTOMER_NAME], [ADDRESS], [PHONE], [EMAIL], [USERNAME], [PASS]) VALUES (5, N'Hường', N'Hà Nội', N'0357101124', N'huong@gmail.com', N'Huong', N'123456')
INSERT [dbo].[CUSTOMER] ([ID_CUSTOMER], [CUSTOMER_NAME], [ADDRESS], [PHONE], [EMAIL], [USERNAME], [PASS]) VALUES (6, N'Ngọc', N'Nam Định', N'0357101187', N'ngoc@gmail.com', N'Ngoc', N'123456')
INSERT [dbo].[CUSTOMER] ([ID_CUSTOMER], [CUSTOMER_NAME], [ADDRESS], [PHONE], [EMAIL], [USERNAME], [PASS]) VALUES (7, N'Hòa', N'Hà Nam', N'0357101115', N'hoa@gmail.com', N'Hoa', N'123456')
INSERT [dbo].[CUSTOMER] ([ID_CUSTOMER], [CUSTOMER_NAME], [ADDRESS], [PHONE], [EMAIL], [USERNAME], [PASS]) VALUES (8, N'Thủy', N'Vĩnh Phúc', N'0357101198', N'thuy@gmail.com', N'Thuy', N'123456')
INSERT [dbo].[CUSTOMER] ([ID_CUSTOMER], [CUSTOMER_NAME], [ADDRESS], [PHONE], [EMAIL], [USERNAME], [PASS]) VALUES (9, N'Duy', N'Hà Nội', N'0357101130', N'duy@gmail.com', N'Duy', N'123456')
SET IDENTITY_INSERT [dbo].[CUSTOMER] OFF
SET IDENTITY_INSERT [dbo].[ORDER] ON 

INSERT [dbo].[ORDER] ([ID_ORDER], [DATE_OD], [ID_CUSTOMER]) VALUES (1, NULL, 1)
INSERT [dbo].[ORDER] ([ID_ORDER], [DATE_OD], [ID_CUSTOMER]) VALUES (2, NULL, 2)
INSERT [dbo].[ORDER] ([ID_ORDER], [DATE_OD], [ID_CUSTOMER]) VALUES (3, NULL, 3)
INSERT [dbo].[ORDER] ([ID_ORDER], [DATE_OD], [ID_CUSTOMER]) VALUES (4, NULL, 4)
SET IDENTITY_INSERT [dbo].[ORDER] OFF
INSERT [dbo].[ORDER_DETAIL] ([ID], [ID_ORDER], [NUMBER], [PRICE]) VALUES (1, 1, 2, CAST(55.00 AS Decimal(5, 2)))
INSERT [dbo].[ORDER_DETAIL] ([ID], [ID_ORDER], [NUMBER], [PRICE]) VALUES (1, 2, 1, CAST(55.00 AS Decimal(5, 2)))
INSERT [dbo].[ORDER_DETAIL] ([ID], [ID_ORDER], [NUMBER], [PRICE]) VALUES (2, 1, 1, CAST(55.00 AS Decimal(5, 2)))
INSERT [dbo].[ORDER_DETAIL] ([ID], [ID_ORDER], [NUMBER], [PRICE]) VALUES (6, 3, 1, CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[ORDER_DETAIL] ([ID], [ID_ORDER], [NUMBER], [PRICE]) VALUES (18, 4, 2, CAST(75.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[SHORES] ON 

INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (1, N'Chuck Taylor All Star Madison   ', N'asm-w.jpg', 10, 1, 2, 4, 6, NULL, CAST(55.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (2, N'Chuck Taylor All Star Madison', N'asm-black.jpg', 12, 2, 1, 4, 6, NULL, CAST(55.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (3, N'Chuck Taylor All Star Madison', N'asm-red.jpg', 15, 4, 4, 4, 6, NULL, CAST(55.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (4, N'Chuck Taylor All Star Washed Ashore                 ', N'wa-gr.jpg', 15, 3, 6, 4, 6, NULL, CAST(55.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (5, N'Chuck Taylor All Star Washed Ashore ', N'wa-b.jpg', 12, 1, 1, 4, 6, NULL, CAST(55.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (6, N'Chuck Taylor All Star Washed Ashore     ', N'asm-red.jpg', 12, 8, 4, 4, 6, NULL, CAST(80.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (7, N'Chuck Taylor All Star Washed Ashore', N'asm-w.jpg', 10, 3, 2, 4, 6, NULL, CAST(55.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (8, N'Chuck Taylor All Star Washed Ashore', N'asm-red.jpg', 10, 4, 4, 4, 6, NULL, CAST(75.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (9, N'Chuck Taylor All Star Lift                  ', N'cv-blue.jpg', 5, 2, 3, 4, 6, NULL, CAST(55.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (10, N'Chuck Taylor All Star Lift', N'cv-blue.jpg', 6, 4, 3, 4, 6, NULL, CAST(55.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (11, N'Chuck Taylor All Star 70 Vintage Canvas High Top   ', N'asm-w.jpg', 5, 8, 2, 4, 6, NULL, CAST(55.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (12, N'Chuck Taylor All Star Lightweight Nylon  ', N'wa-b.jpg', 5, 3, 1, 4, 6, NULL, CAST(99.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (13, N'Chuck Taylor All Star Lightweight Nylon  ', N'cv-blue.jpg', 7, 4, 3, 4, 6, NULL, CAST(75.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (14, N'Chuck Taylor All Star Lightweight Nylon ', N'asm-black.jpg', 2, 3, 1, 4, 6, NULL, CAST(80.00 AS Decimal(5, 2)), CAST(N'2019-04-01' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (15, N'Chuck Taylor All Star Lightweight Nylon ', N'cv-orange.jpg', 5, 2, 7, 4, 6, NULL, CAST(99.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (16, N'Chuck 70 Wahsed Canvas', N'asm-black.jpg', 2, 3, 1, 4, 6, NULL, CAST(75.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (17, N'Chuck 70 Wahsed Canvas ', N'asm-black.jpg', 3, 8, 1, 4, 6, NULL, CAST(80.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (18, N'Chuck 70 Wahsed Canvas', N'asm-black.jpg', 7, 4, 1, 4, 6, NULL, CAST(75.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (19, N'Chuck 70 Wahsed Canvas ', N'cv-orange.jpg', 2, 3, 7, 4, 6, NULL, CAST(99.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (20, N'Chuck 70 Wahsed Canvas', N'cv-blue.jpg', 9, 8, 3, 4, 6, NULL, CAST(75.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (21, N'ULTRABOOST 19 SHOES ', N'adidas-grey.jpg', 8, 10, 6, 1, 2, NULL, CAST(180.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (22, N'ULTRABOOST 19 SHOES ', N'adidas-blue.jpg', 9, 10, 3, 1, 2, NULL, CAST(180.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (23, N'ULTRABOOST 19 SHOES ', N'adidas-black.jpg', 2, 4, 1, 1, 2, NULL, CAST(180.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (24, N'ULTRABOOST ALL TERRAIN SHOES ', N'adidas-black.jpg', 8, 2, 1, 1, 2, NULL, CAST(180.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (25, N'ULTRABOOST ALL TERRAIN SHOES ', N'adidas-grey.jpg', 1, 3, 6, 1, 2, NULL, CAST(180.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (26, N'ULTRABOOST ALL TERRAIN SHOES ', N'adidas-black.jpg', 9, 10, 1, 1, 2, NULL, CAST(180.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (27, N'PUREBOOST RBL SHOES ', N'adidas-white.jpg', 8, 3, 2, 1, 2, NULL, CAST(160.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (28, N'PUREBOOST RBL SHOES ', N'adidas-white.jpg', 12, 4, 2, 1, 2, NULL, CAST(160.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (29, N'PUREBOOST RBL SHOES ', N'adidas-black.jpg', 16, 3, 1, 1, 2, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (30, N'3MC VULC SHOES  ', N'3mc-black.jpg', 12, 2, 1, 1, 2, NULL, CAST(160.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (31, N'3MC VULC SHOES  ', N'3mc-red.jpg', 14, 1, 4, 1, 2, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (32, N'ULTRABOOST ALL TERRAIN SHOES  ', N'adidas-black.jpg', 14, 2, 1, 1, 2, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (33, N'ULTRABOOST ALL TERRAIN SHOES  ', N'adidas-black.jpg', 1, 10, 1, 1, 2, NULL, CAST(160.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (34, N'ULTRABOOST ALL TERRAIN SHOES  ', N'adidas-white.jpg', 8, 10, 2, 1, 2, NULL, CAST(120.00 AS Decimal(5, 2)), CAST(N'2019-04-15' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (35, N'Nike Air Max 270
', N'nike-black.jpg', 12, 2, 1, 2, 2, NULL, CAST(160.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (36, N'Nike Air Max 270
', N'nike-black.jpg', 6, 3, 1, 2, 2, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (37, N'Nike Air Max 270
', N'nike-white.jpg', 8, 4, 2, 2, 2, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (38, N'Nike Air VaporMax Plus ', N'nike-black.jpg', 2, 8, 1, 2, 2, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (39, N'Nike Air VaporMax Plus ', N'nike-red.jpg', 4, 2, 4, 2, 2, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (40, N'Nike Air VaporMax Plus ', N'nike-blue.jpg', 12, 9, 3, 2, 2, NULL, CAST(120.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (41, N'Nike React Vapor 2 NRG', N'nike-black.jpg', 1, 9, 1, 2, 2, NULL, CAST(211.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (42, N'Nike React Vapor 2 NRG', N'nike-red.jpg', 4, 2, 4, 2, 2, NULL, CAST(145.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (43, N'Nike React Vapor 2 NRG ', N'nike-red.jpg', 2, 9, 4, 2, 2, NULL, CAST(189.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (44, N'Nike AF-1 Jester XX SE', N'nike-black.jpg', 6, 9, 1, 2, 2, NULL, CAST(189.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (45, N'Nike AF-1 Jester XX SE', N'nike-blue.jpg', 9, 2, 3, 2, 2, NULL, CAST(211.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (46, N'Nike AF-1 Jester XX SE ', N'nike-black.jpg', 13, 4, 1, 2, 2, NULL, CAST(211.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (47, N'Nike Metcon 3', N'nike-white.jpg', 12, 4, 2, 2, 2, NULL, CAST(189.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (48, N'Nike Metcon 3', N'nike-white.jpg', 4, 11, 2, 2, 2, NULL, CAST(145.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (49, N'Nike Metcon 3', N'nike-red.jpg', 13, 2, 4, 2, 2, NULL, CAST(189.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (50, N'Air Jordan 1 Low
 ', N'nike-grey.jpg', 13, 8, 6, 2, 2, NULL, CAST(145.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (51, N'Air Jordan 1 Low
 ', N'nike-blue.jpg', 2, 10, 3, 2, 2, NULL, CAST(189.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (52, N'Air Jordan 1 Low
 ', N'nike-red.jpg', 7, 9, 4, 2, 2, NULL, CAST(211.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (53, N'Air Jordan 1 Low
 ', N'nike-black.jpg', 6, 5, 1, 2, 2, NULL, CAST(189.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (54, N'Air Jordan Legacy 312 ', N'nike-black.jpg', 3, 11, 1, 2, 2, NULL, CAST(189.00 AS Decimal(5, 2)), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (55, N'Air Jordan Legacy 312 ', N'nike-grey.jpg', 21, 4, 6, 2, 2, NULL, CAST(189.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (56, N'Clyde Court Title Run Basketball Shoes', N'puma-black.jpg', 43, 9, 1, 5, 6, NULL, CAST(198.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (57, N'Clyde Court Title Run Basketball Shoes', N'puma-black.jpg', 12, 3, 1, 5, 6, NULL, CAST(222.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (58, N'Clyde Court Title Run Basketball Shoes  ', N'puma-blue.jpg', 1, 4, 3, 5, 6, NULL, CAST(198.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (59, N'Suede Classic Sneakers', N'puma-blue.jpg', 13, 10, 3, 5, 6, NULL, CAST(222.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (60, N'Suede Classic Sneakers', N'puma-red.jpg', 11, 3, 4, 5, 6, NULL, CAST(321.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (61, N'Suede Classic Sneakers  ', N'puma-grey.jpg', 1, 4, 6, 5, 6, NULL, CAST(222.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (62, N'Uproar Spectra Basketball Shoes', N'puma-blue.jpg', 6, 1, 3, 5, 6, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (63, N'Uproar Spectra Basketball Shoes', N'puma-red.jpg', 6, 2, 4, 5, 6, NULL, CAST(222.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (64, N'Uproar Spectra Basketball Shoes  ', N'puma-white.jpg', 1, 9, 2, 5, 6, NULL, CAST(199.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (65, N'Ralph Sampson Low OG Sneakers', N'puma-white.jpg', 7, 8, 2, 5, 6, NULL, CAST(321.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (66, N'Ralph Sampson Low OG Sneakers ', N'puma-white.jpg', 7, 3, 2, 5, 6, NULL, CAST(321.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (67, N'Palace Guard BB Sneakers', N'puma-black.jpg', 9, 2, 1, 5, 6, NULL, CAST(222.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (68, N'Palace Guard BB Sneakers', N'puma-white.jpg', 7, 11, 2, 5, 6, NULL, CAST(198.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (69, N'Palace Guard BB Sneakers', N'puma-black.jpg', 8, 8, 1, 5, 6, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-05-02' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (70, N'Palace Guard BB Sneakers  ', N'puma-green.jpg', 6, 3, 5, 5, 6, NULL, CAST(199.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (71, N'Source Mid Cinco de Mayo Sneakers', N'puma-white.jpg', 6, 11, 2, 5, 6, NULL, CAST(198.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (72, N'Source Mid Cinco de Mayo Sneakers', N'puma-grey.jpg', 14, 9, 6, 5, 6, NULL, CAST(321.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (73, N'Source Mid Cinco de Mayo Sneakers ', N'puma-white.jpg', 7, 3, 2, 5, 6, NULL, CAST(199.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (74, N'Palace Guard Mid Queen City Sneakers ', N'puma-blue.jpg', 4, 8, 3, 5, 6, NULL, CAST(199.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (75, N'Palace Guard Mid Queen City Sneakers ', N'puma-white.jpg', 12, 3, 2, 5, 6, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (76, N'Rhyton Sneakers   ', N'gucci-white.png', 2, 1, 2, 3, 6, NULL, CAST(198.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (77, N'Rhyton Sneakers', N'gucci-blue.png', 5, 2, 3, 3, 6, NULL, CAST(222.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (78, N'Rhyton Sneakers', N'gucci-white.png', 2, 4, 2, 3, 6, NULL, CAST(321.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (79, N' Ace Sneakers ', N'gucci-black.png', 5, 2, 1, 3, 6, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (80, N' Ace Sneakers', N'gucci-red.png', 3, 8, 4, 3, 6, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (81, N' Ace Sneakers', N'gucci-white.png', 7, 1, 2, 3, 6, NULL, CAST(199.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (82, N'Ace Elastic Band Sneakers ', N'gucci-black.png', 7, 2, 1, 3, 6, NULL, CAST(321.00 AS Decimal(5, 2)), CAST(N'2019-05-12' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (83, N'Ace Elastic Band Sneakers', N'gucci-black.png', 8, 9, 1, 3, 6, NULL, CAST(199.00 AS Decimal(5, 2)), CAST(N'2019-05-14' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (84, N'Ace Elastic Band Sneakers', N'gucci-blue.png', 13, 4, 3, 3, 6, NULL, CAST(210.00 AS Decimal(5, 2)), CAST(N'2019-05-14' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (85, N'Ace Elastic Band Sneakers', N'gucci-white.png', 11, 7, 2, 3, 6, NULL, CAST(321.00 AS Decimal(5, 2)), CAST(N'2019-05-14' AS Date))
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE], [UPDATE_DAY]) VALUES (86, N'Ace Elastic Band Sneakers', N'gucci-black.png', 24, 11, 1, 3, 6, NULL, CAST(321.00 AS Decimal(5, 2)), CAST(N'2019-05-14' AS Date))
SET IDENTITY_INSERT [dbo].[SHORES] OFF
SET IDENTITY_INSERT [dbo].[TYPE] ON 

INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (1, N'Slip Ons  ')
INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (2, N'Boots     ')
INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (3, N'Sandals   ')
INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (4, N'Lace Ups  ')
INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (5, N'Oxfords   ')
INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (6, N'Sneaker   ')
SET IDENTITY_INSERT [dbo].[TYPE] OFF
ALTER TABLE [dbo].[SHORES] ADD  DEFAULT (getdate()) FOR [UPDATE_DAY]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_CUSTOMER] FOREIGN KEY([ID_CUSTOMER])
REFERENCES [dbo].[CUSTOMER] ([ID_CUSTOMER])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK_ORDER_CUSTOMER]
GO
ALTER TABLE [dbo].[ORDER_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_DETAIL_ORDER] FOREIGN KEY([ID_ORDER])
REFERENCES [dbo].[ORDER] ([ID_ORDER])
GO
ALTER TABLE [dbo].[ORDER_DETAIL] CHECK CONSTRAINT [FK_ORDER_DETAIL_ORDER]
GO
ALTER TABLE [dbo].[ORDER_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_DETAIL_SHORES] FOREIGN KEY([ID])
REFERENCES [dbo].[SHORES] ([ID])
GO
ALTER TABLE [dbo].[ORDER_DETAIL] CHECK CONSTRAINT [FK_ORDER_DETAIL_SHORES]
GO
ALTER TABLE [dbo].[SHORES]  WITH CHECK ADD  CONSTRAINT [FK_SHORES__SIZE] FOREIGN KEY([ID_SIZE])
REFERENCES [dbo].[_SIZE] ([ID_SIZE])
GO
ALTER TABLE [dbo].[SHORES] CHECK CONSTRAINT [FK_SHORES__SIZE]
GO
ALTER TABLE [dbo].[SHORES]  WITH CHECK ADD  CONSTRAINT [FK_SHORES_BRAND] FOREIGN KEY([ID_BRAND])
REFERENCES [dbo].[BRAND] ([ID_BRAND])
GO
ALTER TABLE [dbo].[SHORES] CHECK CONSTRAINT [FK_SHORES_BRAND]
GO
ALTER TABLE [dbo].[SHORES]  WITH CHECK ADD  CONSTRAINT [FK_SHORES_COLOR] FOREIGN KEY([ID_COLOR])
REFERENCES [dbo].[COLOR] ([ID_COLOR])
GO
ALTER TABLE [dbo].[SHORES] CHECK CONSTRAINT [FK_SHORES_COLOR]
GO
ALTER TABLE [dbo].[SHORES]  WITH CHECK ADD  CONSTRAINT [FK_SHORES_TYPE] FOREIGN KEY([ID_TYPE])
REFERENCES [dbo].[TYPE] ([ID_TYPE])
GO
ALTER TABLE [dbo].[SHORES] CHECK CONSTRAINT [FK_SHORES_TYPE]
GO
