USE [FOOT]
GO
/****** Object:  Table [dbo].[_SIZE]    Script Date: 5/13/2019 8:46:30 PM ******/
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
/****** Object:  Table [dbo].[BRAND]    Script Date: 5/13/2019 8:46:31 PM ******/
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
/****** Object:  Table [dbo].[COLOR]    Script Date: 5/13/2019 8:46:31 PM ******/
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
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 5/13/2019 8:46:31 PM ******/
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
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[ID_CUSTOMER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 5/13/2019 8:46:31 PM ******/
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
/****** Object:  Table [dbo].[ORDER_DETAIL]    Script Date: 5/13/2019 8:46:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL](
	[ID] [int] NOT NULL,
	[ID_ORDER] [int] NOT NULL,
	[NUMBER] [int] NULL,
	[PRICE] [money] NULL,
 CONSTRAINT [PK_ORDER_DETAIL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ID_ORDER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SHORES]    Script Date: 5/13/2019 8:46:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHORES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [char](100) NULL,
	[IMG] [varchar](50) NULL,
	[SL] [int] NULL,
	[ID_SIZE] [int] NULL,
	[ID_COLOR] [int] NULL,
	[ID_BRAND] [int] NULL,
	[ID_TYPE] [int] NULL,
	[DESCRIPTIONS] [nvarchar](max) NULL,
	[PRICE] [money] NULL,
 CONSTRAINT [PK_SHORES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPE]    Script Date: 5/13/2019 8:46:31 PM ******/
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
SET IDENTITY_INSERT [dbo].[SHORES] ON 

INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (1, N'Chuck Taylor All Star Madison                                                                       ', N'img_bg_2.jpg ', 10, 1, 2, 4, 6, NULL, 55.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (2, N'Chuck Taylor All Star Madison                                                                       ', N'img_bg_2.jpg ', 12, 2, 1, 4, 6, NULL, 55.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (3, N'Chuck Taylor All Star Madison                                                                       ', N'img_bg_2.jpg ', 15, 4, 4, 4, 6, NULL, 55.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (4, N'Chuck Taylor All Star Washed Ashore                                                                 ', N'img_bg_2.jpg ', 15, 3, 6, 4, 6, NULL, 55.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (5, N'Chuck Taylor All Star Washed Ashore                                                                 ', N'img_bg_2.jpg ', 12, 1, 1, 4, 6, NULL, 55.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (6, N'Chuck Taylor All Star Washed Ashore                                                                 ', N'img_bg_2.jpg ', 12, 2, 4, 4, 6, NULL, 80.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (7, N'Chuck Taylor All Star Washed Ashore                                                                 ', N'img_bg_2.jpg ', 10, 3, 2, 4, 6, NULL, 55.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (8, N'Chuck Taylor All Star Washed Ashore                                                                 ', N'img_bg_2.jpg ', 10, 4, 4, 4, 6, NULL, 75.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (9, N'Chuck Taylor All Star Lift                                                                          ', N'img_bg_2.jpg ', 5, 2, 3, 4, 6, NULL, 55.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (10, N'Chuck Taylor All Star Lift                                                                          ', N'img_bg_2.jpg ', 6, 4, 3, 4, 6, NULL, 55.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (11, N'Chuck Taylor All Star 70 Vintage Canvas High Top                                                    ', N'img_bg_2.jpg ', 5, 3, 2, 4, 6, NULL, 55.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (12, N'Chuck Taylor All Star Lightweight Nylon                                                             ', N'img_bg_2.jpg ', 5, 3, 1, 4, 6, NULL, 99.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (13, N'Chuck Taylor All Star Lightweight Nylon                                                             ', N'img_bg_2.jpg ', 7, 4, 3, 4, 6, NULL, 75.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (14, N'Chuck Taylor All Star Lightweight Nylon                                                             ', N'img_bg_2.jpg ', 2, 3, 1, 4, 6, NULL, 80.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (15, N'Chuck Taylor All Star Lightweight Nylon                                                             ', N'img_bg_2.jpg ', 5, 2, 5, 4, 6, NULL, 99.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (16, N'Chuck 70 Wahsed Canvas Ox                                                                           ', N'img_bg_2.jpg ', 2, 3, 1, 4, 6, NULL, 75.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (17, N'Chuck 70 Wahsed Canvas Ox                                                                           ', N'img_bg_2.jpg ', 3, 4, 1, 4, 6, NULL, 80.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (18, N'Chuck 70 Wahsed Canvas Ox                                                                           ', N'img_bg_2.jpg ', 7, 4, 1, 4, 6, NULL, 75.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (19, N'Chuck 70 Wahsed Canvas Ox                                                                           ', N'img_bg_2.jpg ', 2, 3, 5, 4, 6, NULL, 99.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (20, N'Chuck 70 Wahsed Canvas Ox                                                                           ', N'img_bg_2.jpg ', 9, 1, 3, 4, 6, NULL, 75.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (21, N'ULTRABOOST 19 SHOES                                                                                 ', N'img_bg_2.jpg ', 8, 1, 5, 1, 2, NULL, 180.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (22, N'ULTRABOOST 19 SHOES                                                                                 ', N'img_bg_2.jpg ', 9, 2, 3, 1, 2, NULL, 180.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (23, N'ULTRABOOST 19 SHOES                                                                                 ', N'img_bg_2.jpg ', 2, 4, 1, 1, 2, NULL, 180.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (24, N'ULTRABOOST ALL TERRAIN SHOES                                                                        ', N'img_bg_2.jpg ', 8, 2, 1, 1, 2, NULL, 180.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (25, N'ULTRABOOST ALL TERRAIN SHOES                                                                        ', N'img_bg_2.jpg ', 1, 3, 5, 1, 2, NULL, 180.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (26, N'ULTRABOOST ALL TERRAIN SHOES                                                                        ', N'img_bg_2.jpg ', 9, 2, 1, 1, 2, NULL, 180.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (27, N'PUREBOOST RBL SHOES                                                                                 ', N'img_bg_2.jpg ', 8, 3, 2, 1, 2, NULL, 160.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (28, N'PUREBOOST RBL SHOES                                                                                 ', N'img_bg_2.jpg ', 12, 4, 2, 1, 2, NULL, 160.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (29, N'PUREBOOST RBL SHOES                                                                                 ', N'img_bg_2.jpg ', 16, 3, 1, 1, 2, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (30, N'3MC VULC SHOES                                                                                      ', N'img_bg_2.jpg ', 12, 2, 1, 1, 2, NULL, 160.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (31, N'3MC VULC SHOES                                                                                      ', N'img_bg_2.jpg ', 14, 1, 4, 1, 2, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (32, N'ULTRABOOST ALL TERRAIN SHOES                                                                        ', N'img_bg_2.jpg ', 14, 2, 1, 1, 2, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (33, N'ULTRABOOST ALL TERRAIN SHOES                                                                        ', N'img_bg_2.jpg ', 1, 3, 1, 1, 2, NULL, 160.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (34, N'ULTRABOOST ALL TERRAIN SHOES                                                                        ', N'img_bg_2.jpg ', 8, 1, 2, 1, 2, NULL, 120.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (35, N'Nike Air Max 270
                                                                                  ', N'img_bg_2.jpg ', 12, 2, 1, 2, 2, NULL, 160.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (36, N'Nike Air Max 270
                                                                                  ', N'img_bg_2.jpg ', 6, 3, 1, 2, 2, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (37, N'Nike Air Max 270
                                                                                  ', N'img_bg_2.jpg ', 8, 4, 2, 2, 2, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (38, N'Nike Air VaporMax Plus                                                                              ', N'img_bg_2.jpg ', 2, 4, 1, 2, 2, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (39, N'Nike Air VaporMax Plus                                                                              ', N'img_bg_2.jpg ', 4, 2, 4, 2, 2, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (40, N'Nike Air VaporMax Plus                                                                              ', N'img_bg_2.jpg ', 12, 1, 3, 2, 2, NULL, 120.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (41, N'Nike React Vapor 2 NRG                                                                              ', N'img_bg_2.jpg ', 1, 2, 1, 2, 2, NULL, 211.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (42, N'Nike React Vapor 2 NRG                                                                              ', N'img_bg_2.jpg ', 4, 2, 4, 2, 2, NULL, 145.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (43, N'Nike React Vapor 2 NRG                                                                              ', N'img_bg_2.jpg ', 2, 1, 4, 2, 2, NULL, 189.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (44, N'Nike AF-1 Jester XX SE                                                                              ', N'img_bg_2.jpg ', 6, 2, 1, 2, 2, NULL, 189.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (45, N'Nike AF-1 Jester XX SE                                                                              ', N'img_bg_2.jpg ', 9, 2, 3, 2, 2, NULL, 211.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (46, N'Nike AF-1 Jester XX SE                                                                              ', N'img_bg_2.jpg ', 13, 4, 1, 2, 2, NULL, 211.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (47, N'Nike Metcon 3                                                                                       ', N'img_bg_2.jpg ', 12, 4, 2, 2, 2, NULL, 189.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (48, N'Nike Metcon 3                                                                                       ', N'img_bg_2.jpg ', 4, 1, 2, 2, 2, NULL, 145.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (49, N'Nike Metcon 3                                                                                       ', N'img_bg_2.jpg ', 13, 2, 4, 2, 2, NULL, 189.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (50, N'Air Jordan 1 Low
                                                                                  ', N'img_bg_2.jpg ', 13, 2, 5, 2, 2, NULL, 145.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (51, N'Air Jordan 1 Low
                                                                                  ', N'img_bg_2.jpg ', 2, 1, 3, 2, 2, NULL, 189.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (52, N'Air Jordan 1 Low
                                                                                  ', N'img_bg_2.jpg ', 7, 2, 4, 2, 2, NULL, 211.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (53, N'Air Jordan 1 Low
                                                                                  ', N'img_bg_2.jpg ', 6, 5, 1, 2, 2, NULL, 189.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (54, N'Air Jordan Legacy 312                                                                               ', N'img_bg_2.jpg ', 3, 2, 1, 2, 2, NULL, 189.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (55, N'Air Jordan Legacy 312                                                                               ', N'img_bg_2.jpg ', 21, 4, 6, 2, 2, NULL, 189.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (56, N'Clyde Court Title Run Basketball Shoes                                                              ', N'img_bg_2.jpg ', 43, 2, 1, 5, 6, NULL, 198.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (57, N'Clyde Court Title Run Basketball Shoes                                                              ', N'img_bg_2.jpg ', 12, 3, 1, 5, 6, NULL, 222.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (58, N'Clyde Court Title Run Basketball Shoes                                                              ', N'img_bg_2.jpg ', 1, 4, 3, 5, 6, NULL, 198.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (59, N'Suede Classic Sneakers                                                                              ', N'img_bg_2.jpg ', 13, 2, 3, 5, 6, NULL, 222.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (60, N'Suede Classic Sneakers                                                                              ', N'img_bg_2.jpg ', 11, 3, 4, 5, 6, NULL, 321.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (61, N'Suede Classic Sneakers                                                                              ', N'img_bg_2.jpg ', 1, 4, 6, 5, 6, NULL, 222.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (62, N'Uproar Spectra Basketball Shoes                                                                     ', N'img_bg_2.jpg ', 6, 1, 3, 5, 6, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (63, N'Uproar Spectra Basketball Shoes                                                                     ', N'img_bg_2.jpg ', 6, 2, 4, 5, 6, NULL, 222.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (64, N'Uproar Spectra Basketball Shoes                                                                     ', N'img_bg_2.jpg ', 1, 3, 2, 5, 6, NULL, 199.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (65, N'Ralph Sampson Low OG Sneakers                                                                       ', N'img_bg_2.jpg ', 7, 1, 2, 5, 6, NULL, 321.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (66, N'Ralph Sampson Low OG Sneakers                                                                       ', N'img_bg_2.jpg ', 7, 3, 2, 5, 6, NULL, 321.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (67, N'Ralph Sampson Low OG Sneakers                                                                       ', N'img_bg_2.jpg ', 9, 2, 1, 5, 6, NULL, 222.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (68, N'Palace Guard BB Sneakers                                                                            ', N'img_bg_2.jpg ', 7, 1, 2, 5, 6, NULL, 198.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (69, N'Palace Guard BB Sneakers                                                                            ', N'img_bg_2.jpg ', 8, 2, 1, 5, 6, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (70, N'Palace Guard BB Sneakers                                                                            ', N'img_bg_2.jpg ', 6, 3, 5, 5, 6, NULL, 199.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (71, N'Source Mid Cinco de Mayo Sneakers                                                                   ', N'img_bg_2.jpg ', 6, 1, 2, 5, 6, NULL, 198.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (72, N'Source Mid Cinco de Mayo Sneakers                                                                   ', N'img_bg_2.jpg ', 14, 2, 6, 5, 6, NULL, 321.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (73, N'Source Mid Cinco de Mayo Sneakers                                                                   ', N'img_bg_2.jpg ', 7, 3, 2, 5, 6, NULL, 199.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (74, N'Palace Guard Mid Queen City Sneakers                                                                ', N'img_bg_2.jpg ', 4, 1, 3, 5, 6, NULL, 199.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (75, N'Palace Guard Mid Queen City Sneakers                                                                ', N'img_bg_2.jpg ', 12, 3, 2, 5, 6, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (76, N'Rhyton Sneakers                                                                                     ', N'img_bg_2.jpg ', 2, 1, 2, 3, 6, NULL, 198.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (77, N'Rhyton Sneakers                                                                                     ', N'img_bg_2.jpg ', 5, 2, 3, 3, 6, NULL, 222.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (78, N'Rhyton Sneakers                                                                                     ', N'img_bg_2.jpg ', 2, 4, 2, 3, 6, NULL, 321.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (79, N' Ace Sneakers                                                                                       ', N'img_bg_2.jpg ', 5, 2, 1, 3, 6, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (80, N' Ace Sneakers                                                                                       ', N'img_bg_2.jpg ', 3, 2, 5, 3, 6, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (81, N' Ace Sneakers                                                                                       ', N'img_bg_2.jpg ', 7, 1, 2, 3, 6, NULL, 199.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (82, N'Ace Elastic Band Sneakers                                                                           ', N'img_bg_2.jpg ', 7, 2, 1, 3, 6, NULL, 321.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (83, N'Ace Elastic Band Sneakers                                                                           ', N'img_bg_2.jpg ', 8, 2, 1, 3, 6, NULL, 199.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (84, N'Ace Elastic Band Sneakers                                                                           ', N'img_bg_2.jpg ', 13, 4, 3, 3, 6, NULL, 210.0000)
INSERT [dbo].[SHORES] ([ID], [NAME], [IMG], [SL], [ID_SIZE], [ID_COLOR], [ID_BRAND], [ID_TYPE], [DESCRIPTIONS], [PRICE]) VALUES (85, N'Ace Elastic Band Sneakers                                                                           ', NULL, 11, 7, 2, 3, 6, NULL, 321.0000)
SET IDENTITY_INSERT [dbo].[SHORES] OFF
SET IDENTITY_INSERT [dbo].[TYPE] ON 

INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (1, N'Slip Ons  ')
INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (2, N'Boots     ')
INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (3, N'Sandals   ')
INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (4, N'Lace Ups  ')
INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (5, N'Oxfords   ')
INSERT [dbo].[TYPE] ([ID_TYPE], [TYPE_NAME]) VALUES (6, N'Sneaker   ')
SET IDENTITY_INSERT [dbo].[TYPE] OFF
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
