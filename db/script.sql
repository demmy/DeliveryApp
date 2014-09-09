USE [Delivery]
GO
/****** Object:  Table [dbo].[City]    Script Date: 27.08.2014 16:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Distance]    Script Date: 27.08.2014 16:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distance](
	[city_from_id] [int] NULL,
	[city_to_id] [int] NULL,
	[distance] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 27.08.2014 16:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NULL,
	[sender_id] [int] NOT NULL,
	[recipient_id] [int] NOT NULL,
	[recipient_store_id] [int] NOT NULL,
	[sender_store_id] [int] NOT NULL,
	[shipping_date] [datetime] NULL,
	[recieving_date] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pack]    Script Date: 27.08.2014 16:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pack](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Barcode] [varchar](50) NULL,
	[Weight] [varchar](50) NULL,
	[Order_ID] [int] NOT NULL,
 CONSTRAINT [PK_Pack] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 27.08.2014 16:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NULL,
	[middle_name] [varchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[person_phone]    Script Date: 27.08.2014 16:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_phone](
	[person_id] [int] NOT NULL,
	[phone_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phone]    Script Date: 27.08.2014 16:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shedule]    Script Date: 27.08.2014 16:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shedule] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Shedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Store]    Script Date: 27.08.2014 16:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Store](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[city_id] [int] NOT NULL,
	[address] [varchar](250) NULL,
	[shedule_id] [int] NULL,
 CONSTRAINT [PK_Store_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[store_phone]    Script Date: 27.08.2014 16:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[store_phone](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[store_id] [int] NOT NULL,
	[phone_id] [int] NOT NULL,
 CONSTRAINT [PK_StorePhone] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([id], [name]) VALUES (2, N'Днепропетровск')
INSERT [dbo].[City] ([id], [name]) VALUES (3, N'Донецк')
INSERT [dbo].[City] ([id], [name]) VALUES (4, N'Львов')
INSERT [dbo].[City] ([id], [name]) VALUES (5, N'Харьков')
INSERT [dbo].[City] ([id], [name]) VALUES (12, N'Киев')
SET IDENTITY_INSERT [dbo].[City] OFF
INSERT [dbo].[Distance] ([city_from_id], [city_to_id], [distance]) VALUES (12, 2, 533)
INSERT [dbo].[Distance] ([city_from_id], [city_to_id], [distance]) VALUES (4, 3, 1221)
INSERT [dbo].[Distance] ([city_from_id], [city_to_id], [distance]) VALUES (12, 5, 478)
INSERT [dbo].[Distance] ([city_from_id], [city_to_id], [distance]) VALUES (2, 5, 335)
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [description], [sender_id], [recipient_id], [recipient_store_id], [sender_store_id], [shipping_date], [recieving_date]) VALUES (1, N'Посылка 1 киев-днепр', 1, 6, 1, 6, CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[Order] ([id], [description], [sender_id], [recipient_id], [recipient_store_id], [sender_store_id], [shipping_date], [recieving_date]) VALUES (2, N'Посылка 3 львов-донецк', 4, 5, 2, 3, CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[Order] ([id], [description], [sender_id], [recipient_id], [recipient_store_id], [sender_store_id], [shipping_date], [recieving_date]) VALUES (3, N'посылка 2 киев-харьков', 3, 4, 4, 1, CAST(0x0000000000000000 AS DateTime), CAST(0x0000000000000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[Pack] ON 

INSERT [dbo].[Pack] ([ID], [Barcode], [Weight], [Order_ID]) VALUES (6, N'11111111111', N'12', 1)
INSERT [dbo].[Pack] ([ID], [Barcode], [Weight], [Order_ID]) VALUES (7, N'22222222222', N'13', 1)
INSERT [dbo].[Pack] ([ID], [Barcode], [Weight], [Order_ID]) VALUES (8, N'33333333333', N'15', 2)
INSERT [dbo].[Pack] ([ID], [Barcode], [Weight], [Order_ID]) VALUES (9, N'44444444444', N'18', 3)
INSERT [dbo].[Pack] ([ID], [Barcode], [Weight], [Order_ID]) VALUES (10, N'55555555555', N'23', 3)
SET IDENTITY_INSERT [dbo].[Pack] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([id], [last_name], [first_name], [middle_name]) VALUES (1, N'Иванов', N'Сергей', N'Петрович')
INSERT [dbo].[Person] ([id], [last_name], [first_name], [middle_name]) VALUES (2, N'Петров', N'Иван', N'Дмитриевич')
INSERT [dbo].[Person] ([id], [last_name], [first_name], [middle_name]) VALUES (3, N'Сидорова', N'Светлана', N'Евгеньевна')
INSERT [dbo].[Person] ([id], [last_name], [first_name], [middle_name]) VALUES (4, N'Мухин', N'Петр', N'Иванович')
INSERT [dbo].[Person] ([id], [last_name], [first_name], [middle_name]) VALUES (5, N'Палева', N'Елена', N'Игоревна')
INSERT [dbo].[Person] ([id], [last_name], [first_name], [middle_name]) VALUES (6, N'Джеймсон', N'Северн', N'')
SET IDENTITY_INSERT [dbo].[Person] OFF
INSERT [dbo].[person_phone] ([person_id], [phone_id]) VALUES (1, 4)
INSERT [dbo].[person_phone] ([person_id], [phone_id]) VALUES (2, 5)
INSERT [dbo].[person_phone] ([person_id], [phone_id]) VALUES (3, 6)
INSERT [dbo].[person_phone] ([person_id], [phone_id]) VALUES (4, 7)
INSERT [dbo].[person_phone] ([person_id], [phone_id]) VALUES (5, 8)
INSERT [dbo].[person_phone] ([person_id], [phone_id]) VALUES (6, 5)
SET IDENTITY_INSERT [dbo].[Phone] ON 

INSERT [dbo].[Phone] ([id], [phone]) VALUES (4, N'380998874545')
INSERT [dbo].[Phone] ([id], [phone]) VALUES (5, N'380635586521')
INSERT [dbo].[Phone] ([id], [phone]) VALUES (6, N'08005422365')
INSERT [dbo].[Phone] ([id], [phone]) VALUES (7, N'3806754542')
INSERT [dbo].[Phone] ([id], [phone]) VALUES (8, N'3809754545')
SET IDENTITY_INSERT [dbo].[Phone] OFF
SET IDENTITY_INSERT [dbo].[Shedule] ON 

INSERT [dbo].[Shedule] ([id], [shedule]) VALUES (1, N'круглосуточно')
INSERT [dbo].[Shedule] ([id], [shedule]) VALUES (2, N'09:00 - 18:00')
INSERT [dbo].[Shedule] ([id], [shedule]) VALUES (3, N'08:00 - 17:00')
INSERT [dbo].[Shedule] ([id], [shedule]) VALUES (4, N'10:00 - 20:00')
INSERT [dbo].[Shedule] ([id], [shedule]) VALUES (5, N'08:00 - 13:00')
SET IDENTITY_INSERT [dbo].[Shedule] OFF
SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([id], [city_id], [address], [shedule_id]) VALUES (1, 2, N'К.Макса 64', 2)
INSERT [dbo].[Store] ([id], [city_id], [address], [shedule_id]) VALUES (2, 3, N'Донецкая 4', 5)
INSERT [dbo].[Store] ([id], [city_id], [address], [shedule_id]) VALUES (3, 4, N'Львовская 5', 4)
INSERT [dbo].[Store] ([id], [city_id], [address], [shedule_id]) VALUES (4, 5, N'Харьковская 7', 1)
INSERT [dbo].[Store] ([id], [city_id], [address], [shedule_id]) VALUES (5, 12, N'Киевская 78', 3)
INSERT [dbo].[Store] ([id], [city_id], [address], [shedule_id]) VALUES (6, 12, N'Центральная 12', 1)
SET IDENTITY_INSERT [dbo].[Store] OFF
SET IDENTITY_INSERT [dbo].[store_phone] ON 

INSERT [dbo].[store_phone] ([id], [store_id], [phone_id]) VALUES (1, 3, 6)
INSERT [dbo].[store_phone] ([id], [store_id], [phone_id]) VALUES (2, 1, 6)
INSERT [dbo].[store_phone] ([id], [store_id], [phone_id]) VALUES (3, 2, 7)
INSERT [dbo].[store_phone] ([id], [store_id], [phone_id]) VALUES (4, 3, 8)
INSERT [dbo].[store_phone] ([id], [store_id], [phone_id]) VALUES (5, 4, 4)
INSERT [dbo].[store_phone] ([id], [store_id], [phone_id]) VALUES (6, 5, 5)
INSERT [dbo].[store_phone] ([id], [store_id], [phone_id]) VALUES (7, 6, 5)
SET IDENTITY_INSERT [dbo].[store_phone] OFF
ALTER TABLE [dbo].[Distance]  WITH CHECK ADD  CONSTRAINT [FK_Distance_City_from] FOREIGN KEY([city_from_id])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Distance] CHECK CONSTRAINT [FK_Distance_City_from]
GO
ALTER TABLE [dbo].[Distance]  WITH CHECK ADD  CONSTRAINT [FK_Distance_City_to] FOREIGN KEY([city_to_id])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Distance] CHECK CONSTRAINT [FK_Distance_City_to]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_recipient] FOREIGN KEY([recipient_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_recipient]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_sender] FOREIGN KEY([sender_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_sender]
GO
ALTER TABLE [dbo].[Pack]  WITH CHECK ADD  CONSTRAINT [FK_Pack_Order] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Pack] CHECK CONSTRAINT [FK_Pack_Order]
GO
ALTER TABLE [dbo].[person_phone]  WITH CHECK ADD  CONSTRAINT [FK_PersonPhone_Person] FOREIGN KEY([person_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[person_phone] CHECK CONSTRAINT [FK_PersonPhone_Person]
GO
ALTER TABLE [dbo].[person_phone]  WITH CHECK ADD  CONSTRAINT [FK_PersonPhone_Phone] FOREIGN KEY([phone_id])
REFERENCES [dbo].[Phone] ([id])
GO
ALTER TABLE [dbo].[person_phone] CHECK CONSTRAINT [FK_PersonPhone_Phone]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_City] FOREIGN KEY([city_id])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_City]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Shedule] FOREIGN KEY([shedule_id])
REFERENCES [dbo].[Shedule] ([id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Shedule]
GO
ALTER TABLE [dbo].[store_phone]  WITH CHECK ADD  CONSTRAINT [FK_store_phone_Store] FOREIGN KEY([store_id])
REFERENCES [dbo].[Store] ([id])
GO
ALTER TABLE [dbo].[store_phone] CHECK CONSTRAINT [FK_store_phone_Store]
GO
ALTER TABLE [dbo].[store_phone]  WITH CHECK ADD  CONSTRAINT [FK_StorePhone_Phone] FOREIGN KEY([phone_id])
REFERENCES [dbo].[Phone] ([id])
GO
ALTER TABLE [dbo].[store_phone] CHECK CONSTRAINT [FK_StorePhone_Phone]
GO
USE [master]
GO
ALTER DATABASE [Delivery] SET  READ_WRITE 
GO
