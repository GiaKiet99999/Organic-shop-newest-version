USE create database use [ASMJava5]
use master
GO
/****** Object:  Table [dbo].[categories]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[address_customer] [varchar](255) NOT NULL,
	[date_of_birth_customer] [datetime2](6) NOT NULL,
	[date_sign_up_customer] [datetime2](6) NOT NULL,
	[email_customer] [varchar](255) NOT NULL,
	[first_name_customer] [varchar](255) NOT NULL,
	[genders_customer] [bit] NOT NULL,
	[is_active_customer] [bit] NOT NULL,
	[last_name_customer] [varchar](255) NOT NULL,
	[phone_number_customer] [varchar](20) NOT NULL,
	[users_id_customer] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_jsemyvyhfguywq5u0446t9npx] UNIQUE NONCLUSTERED 
(
	[users_id_customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[address_employee] [varchar](255) NOT NULL,
	[date_of_birth_employee] [datetime2](6) NOT NULL,
	[email_employee] [varchar](255) NOT NULL,
	[first_name_employee] [varchar](255) NOT NULL,
	[genders_employee] [bit] NOT NULL,
	[is_active__employee] [bit] NOT NULL,
	[last_name_employee] [varchar](255) NOT NULL,
	[phone_number_employee] [varchar](50) NOT NULL,
	[picture_employee] [varchar](255) NULL,
	[users_id_employee] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_6ib8gcswdn1sl3ifuq1wig80a] UNIQUE NONCLUSTERED 
(
	[users_id_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[total_price] [numeric](38, 2) NOT NULL,
	[unit_price] [numeric](38, 2) NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [datetime2](6) NOT NULL,
	[order_status] [varchar](50) NULL,
	[shipping_address] [varchar](255) NULL,
	[total_amount] [numeric](38, 2) NOT NULL,
	[customer_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[exp_date] [datetime2](6) NULL,
	[image_url] [varchar](255) NULL,
	[import_date] [datetime2](6) NULL,
	[is_active] [bit] NOT NULL,
	[price_product] [real] NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[quantity] [int] NULL,
	[sale_price] [real] NULL,
	[category_id] [int] NULL,
	[supplier_id] [int] NULL,
	[unit] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[rating] [int] NOT NULL,
	[review_date] [datetime2](6) NOT NULL,
	[review_text] [varchar](255) NULL,
	[customer_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suppliers](
	[supplier_id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_address] [varchar](255) NULL,
	[contact_email] [varchar](255) NULL,
	[contact_name] [varchar](255) NULL,
	[contact_phone] [varchar](50) NULL,
	[name_supplier] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[units]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[units](
	[id_unit] [int] IDENTITY(1,1) NOT NULL,
	[name_unit] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_roles]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[users_id] [varchar](255) NOT NULL,
	[password_user] [varchar](255) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[role_name_user] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[users_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vouchers]    Script Date: 29-May-24 3:43:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vouchers](
	[voucher_id] [int] IDENTITY(1,1) NOT NULL,
	[discount_amount] [real] NOT NULL,
	[expiry_date_voucher] [datetime2](6) NOT NULL,
	[is_active_voucher] [bit] NOT NULL,
	[quantity_voucher] [int] NOT NULL,
	[voucher_code] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[customers]  WITH CHECK ADD  CONSTRAINT [FKj4u7aiink8pnr77ivy7108lb3] FOREIGN KEY([users_id_customer])
REFERENCES [dbo].[users] ([users_id])
GO
ALTER TABLE [dbo].[customers] CHECK CONSTRAINT [FKj4u7aiink8pnr77ivy7108lb3]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK5mvm9k6igipb8g03cuscymsht] FOREIGN KEY([users_id_employee])
REFERENCES [dbo].[users] ([users_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK5mvm9k6igipb8g03cuscymsht]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK4q98utpd73imf4yhttm3w0eax] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK4q98utpd73imf4yhttm3w0eax]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKpxtb8awmi0dk6smoh2vp1litg] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKpxtb8awmi0dk6smoh2vp1litg]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK6i174ixi9087gcvvut45em7fd] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[suppliers] ([supplier_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK6i174ixi9087gcvvut45em7fd]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKjt4e5qdcbsjn8ikffhs4w3ur4] FOREIGN KEY([unit])
REFERENCES [dbo].[units] ([id_unit])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKjt4e5qdcbsjn8ikffhs4w3ur4]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([category_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FK4sm0k8kw740iyuex3vwwv1etu] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([customer_id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FK4sm0k8kw740iyuex3vwwv1etu]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FKpl51cejpw4gy5swfar8br9ngi] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FKpl51cejpw4gy5swfar8br9ngi]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FKlnvg737mpa5uppx4rj6eus7u] FOREIGN KEY([role_name_user])
REFERENCES [dbo].[user_roles] ([role_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FKlnvg737mpa5uppx4rj6eus7u]
GO

INSERT INTO [dbo].[user_roles] ([role_name]) VALUES
('Khách hàng'), ('Nhân viên'), ('Quản lý');
INSERT INTO [dbo].[units] ([name_unit]) VALUES
('kg'), ('gram'), ('túi');
INSERT INTO [dbo].[users] ([users_id], [password_user], [username], [role_name_user]) VALUES
('user1', 'password1', 'customer1', 1),
('user2', 'password2', 'customer2', 1),
('user3', 'password3', 'customer3', 1),
('user4', 'password4', 'customer4', 1),
('user5', 'password5', 'customer5', 1),
('user6', 'password6', 'customer6', 1),
('user7', 'password7', 'customer7', 1),
('user8', 'password8', 'customer8', 1),
('user9', 'password9', 'customer9', 1),
('user10', 'password10', 'customer10', 1),
('user11', 'password11', 'employee1', 2),
('user12', 'password12', 'employee2', 2),
('user13', 'password13', 'employee3', 2),
('user14', 'password14', 'employee4', 2),
('user15', 'password15', 'employee5', 2),
('user16', 'password16', 'employee6', 2),
('user17', 'password17', 'employee7', 2),
('user18', 'password18', 'employee8', 2),
('user19', 'password19', 'employee9', 3),
('user20', 'password20', 'employee10', 3);
INSERT INTO [dbo].[customers] ([address_customer], [date_of_birth_customer], [date_sign_up_customer], [email_customer], [first_name_customer], [genders_customer], [is_active_customer], [last_name_customer], [phone_number_customer], [users_id_customer]) VALUES
('Address1', '1990-01-01', GETDATE(), 'customer1@example.com', 'First1', 1, 1, 'Last1', '1234567890', 'user1'),
('Address2', '1991-02-01', GETDATE(), 'customer2@example.com', 'First2', 0, 1, 'Last2', '1234567891', 'user2'),
('Address3', '1992-03-01', GETDATE(), 'customer3@example.com', 'First3', 1, 1, 'Last3', '1234567892', 'user3'),
('Address4', '1993-04-01', GETDATE(), 'customer4@example.com', 'First4', 0, 1, 'Last4', '1234567893', 'user4'),
('Address5', '1994-05-01', GETDATE(), 'customer5@example.com', 'First5', 1, 1, 'Last5', '1234567894', 'user5'),
('Address6', '1995-06-01', GETDATE(), 'customer6@example.com', 'First6', 0, 1, 'Last6', '1234567895', 'user6'),
('Address7', '1996-07-01', GETDATE(), 'customer7@example.com', 'First7', 1, 1, 'Last7', '1234567896', 'user7'),
('Address8', '1997-08-01', GETDATE(), 'customer8@example.com', 'First8', 0, 1, 'Last8', '1234567897', 'user8'),
('Address9', '1998-09-01', GETDATE(), 'customer9@example.com', 'First9', 1, 1, 'Last9', '1234567898', 'user9'),
('Address10', '1999-10-01', GETDATE(), 'customer10@example.com', 'First10', 0, 1, 'Last10', '1234567899', 'user10');
INSERT INTO [dbo].[employees] ([address_employee], [date_of_birth_employee], [email_employee], [first_name_employee], [genders_employee], [is_active__employee], [last_name_employee], [phone_number_employee], [picture_employee], [users_id_employee]) VALUES
('Address11', '1980-01-01', 'employee1@example.com', 'EmpFirst1', 1, 1, 'EmpLast1', '2234567890', 'emp1.jpg', 'user11'),
('Address12', '1981-02-01', 'employee2@example.com', 'EmpFirst2', 0, 1, 'EmpLast2', '2234567891', 'emp2.jpg', 'user12'),
('Address13', '1982-03-01', 'employee3@example.com', 'EmpFirst3', 1, 1, 'EmpLast3', '2234567892', 'emp3.jpg', 'user13'),
('Address14', '1983-04-01', 'employee4@example.com', 'EmpFirst4', 0, 1, 'EmpLast4', '2234567893', 'emp4.jpg', 'user14'),
('Address15', '1984-05-01', 'employee5@example.com', 'EmpFirst5', 1, 1, 'EmpLast5', '2234567894', 'emp5.jpg', 'user15'),
('Address16', '1985-06-01', 'employee6@example.com', 'EmpFirst6', 0, 1, 'EmpLast6', '2234567895', 'emp6.jpg', 'user16'),
('Address17', '1986-07-01', 'employee7@example.com', 'EmpFirst7', 1, 1, 'EmpLast7', '2234567896', 'emp7.jpg', 'user17'),
('Address18', '1987-08-01', 'employee8@example.com', 'EmpFirst8', 0, 1, 'EmpLast8', '2234567897', 'emp8.jpg', 'user18'),
('Address19', '1988-09-01', 'employee9@example.com', 'EmpFirst9', 1, 1, 'EmpLast9', '2234567898', 'emp9.jpg', 'user19'),
('Address20', '1989-10-01', 'employee10@example.com', 'EmpFirst10', 0, 1, 'EmpLast10', '2234567899','emp10.jpg', 'user20');
INSERT INTO [dbo].[categories] ([category_name]) VALUES
('Category 1'), ('Category 2'), ('Category 3'), ('Category 4'), ('Category 5'),
('Category 6'), ('Category 7'), ('Category 8'), ('Category 9'), ('Category 10');
INSERT INTO [dbo].[suppliers] ([supplier_address], [contact_email], [contact_name], [contact_phone], [name_supplier]) VALUES
('Supplier Address 1', 'supplier1@example.com', 'Supplier1', '1111111111', 'Supplier 1'),
('Supplier Address 2', 'supplier2@example.com', 'Supplier2', '2222222222', 'Supplier 2'),
('Supplier Address 3', 'supplier3@example.com', 'Supplier3', '3333333333', 'Supplier 3'),
('Supplier Address 4', 'supplier4@example.com', 'Supplier4', '4444444444', 'Supplier 4'),
('Supplier Address 5', 'supplier5@example.com', 'Supplier5', '5555555555', 'Supplier 5'),
('Supplier Address 6', 'supplier6@example.com', 'Supplier6', '6666666666', 'Supplier 6'),
('Supplier Address 7', 'supplier7@example.com', 'Supplier7', '7777777777', 'Supplier 7'),
('Supplier Address 8', 'supplier8@example.com', 'Supplier8', '8888888888', 'Supplier 8'),
('Supplier Address 9', 'supplier9@example.com', 'Supplier9', '9999999999', 'Supplier 9'),
('Supplier Address 10', 'supplier10@example.com', 'Supplier10', '1010101010', 'Supplier 10');
INSERT INTO [dbo].[products] ([description], [exp_date], [image_url], [import_date], [is_active], [price_product], [product_name], [quantity], [sale_price], [category_id], [supplier_id], [unit]) VALUES
('Description 1', '2025-01-01', 'img1.jpg', '2024-05-01', 1, 10.0, 'Product 1', 100, 8.0, 1, 1, 1),
('Description 2', '2025-02-01', 'img2.jpg', '2024-06-01', 1, 20.0, 'Product 2', 200, 18.0, 2, 2, 2),
('Description 3', '2025-03-01', 'img3.jpg', '2024-07-01', 1, 30.0, 'Product 3', 300, 28.0, 3, 3, 3),
('Description 4', '2025-04-01', 'img4.jpg', '2024-08-01', 1, 40.0, 'Product 4', 400, 38.0, 4, 4, 1),
('Description 5', '2025-05-01', 'img5.jpg', '2024-09-01', 1, 50.0, 'Product 5', 500, 48.0, 5, 5, 2),
('Description 6', '2025-06-01', 'img6.jpg', '2024-10-01', 1, 60.0, 'Product 6', 600, 58.0, 6, 6, 3),
('Description 7', '2025-07-01', 'img7.jpg', '2024-11-01', 1, 70.0, 'Product 7', 700, 68.0, 7, 7, 1),
('Description 8', '2025-08-01', 'img8.jpg', '2024-12-01', 1, 80.0, 'Product 8', 800, 78.0, 8, 8, 2),
('Description 9', '2025-09-01', 'img9.jpg', '2025-01-01', 1, 90.0, 'Product 9', 900, 88.0, 9, 9, 3),
('Description 10', '2025-10-01', 'img10.jpg', '2025-02-01', 1, 100.0, 'Product 10', 1000, 98.0, 10, 10, 1),
('Description 11', '2025-01-01', 'img11.jpg', '2024-05-01', 1, 410.0, 'Product 11', 100, 408.0, 1, 1, 1),
('Description 12', '2025-02-01', 'img12.jpg', '2024-06-01', 1, 420.0, 'Product 12', 200, 418.0, 2, 2, 2),
('Description 13', '2025-03-01', 'img13.jpg', '2024-07-01', 1, 430.0, 'Product 13', 300, 428.0, 3, 3, 3),
('Description 14', '2025-04-01', 'img14.jpg', '2024-08-01', 1, 440.0, 'Product 14', 400, 438.0, 4, 4, 1),
('Description 15', '2025-05-01', 'img15.jpg', '2024-09-01', 1, 450.0, 'Product 15', 500, 448.0, 5, 5, 2),
('Description 16', '2025-06-01', 'img16.jpg', '2024-10-01', 1, 460.0, 'Product 16', 600, 458.0, 6, 6, 3),
('Description 17', '2025-07-01', 'img17.jpg', '2024-11-01', 1, 470.0, 'Product 17', 700, 468.0, 7, 7, 1),
('Description 18', '2025-08-01', 'img18.jpg', '2024-12-01', 1, 480.0, 'Product 18', 800, 478.0, 8, 8, 2),
('Description 19', '2025-09-01', 'img19.jpg', '2025-01-01', 1, 490.0, 'Product 19', 900, 488.0, 9, 9, 3),
('Description 20', '2025-10-01', 'img20.jpg', '2025-02-01', 1, 500.0, 'Product 20', 1000, 498.0, 10, 10, 1);



INSERT INTO [dbo].[orders] ([order_date], [order_status], [shipping_address], [total_amount], [customer_id]) VALUES
(GETDATE(), 'Processing', 'Address1', 100.0, 1),
(GETDATE(), 'Shipped', 'Address2', 200.0, 2),
(GETDATE(), 'Delivered', 'Address3', 300.0, 3),
(GETDATE(), 'Cancelled', 'Address4', 400.0, 4),
(GETDATE(), 'Returned', 'Address5', 500.0, 5);
INSERT INTO [dbo].[order_details] ([quantity], [total_price], [unit_price], [order_id], [product_id]) VALUES
(2, 20.0, 10.0, 1, 1),
(3, 60.0, 20.0, 2, 2),
(1, 30.0, 30.0, 3, 3),
(4, 160.0, 40.0, 4, 4),
(5, 250.0, 50.0, 5, 5);

INSERT INTO [dbo].[reviews] ([rating], [review_date], [review_text], [customer_id], [product_id]) VALUES
(5, GETDATE(), 'Great product!', 1, 1),
(4, GETDATE(), 'Very good!', 2, 2),
(3, GETDATE(), 'Average', 3, 3),
(2, GETDATE(), 'Not bad', 4, 4),
(1, GETDATE(), 'Terrible', 5, 5),
(5, GETDATE(), 'Excellent!', 6, 6),
(4, GETDATE(), 'Pretty good', 7, 7),
(3, GETDATE(), 'Okay', 8, 8),
(2, GETDATE(), 'Could be better', 9, 9),
(1, GETDATE(), 'Worst purchase', 10, 10),
(5, GETDATE(), 'Amazing!', 1, 2),
(4, GETDATE(), 'Good quality', 2, 3),
(3, GETDATE(), 'Fair', 3, 4),
(2, GETDATE(), 'Poor', 4, 5),
(1, GETDATE(), 'Horrible', 5, 6),
(5, GETDATE(), 'Loved it!', 6, 7),
(4, GETDATE(), 'Nice', 7, 8),
(3, GETDATE(), 'Just fine', 8, 9),
(2, GETDATE(), 'Not so good', 9, 10),
(1, GETDATE(), 'Disappointed', 10, 1);

INSERT INTO [dbo].[vouchers] ([discount_amount], [expiry_date_voucher], [is_active_voucher], [quantity_voucher], [voucher_code]) VALUES
(10.0, '2024-12-31', 1, 100, 'VOUCHER10'),
(15.0, '2024-11-30', 1, 150, 'VOUCHER15'),
(20.0, '2024-10-31', 1, 200, 'VOUCHER20'),
(25.0, '2024-09-30', 1, 250, 'VOUCHER25'),
(30.0, '2024-08-31', 1, 300, 'VOUCHER30');
