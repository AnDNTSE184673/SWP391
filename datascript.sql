USE [DiamondShop]
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (N'AD', N'Admin')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (N'DS', N'Delivery Staff')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (N'MN', N'Manager')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (N'SS', N'Sale Staff')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (N'US', N'User')
GO
INSERT [dbo].[Accounts] ([AccountID], [UserName], [FullName], [Email], [Password], [PhoneNumber], [Role], [Address]) VALUES (N'AD001', N'Admin01', N'ADMIN', N'admin@gmail.com', N'admin001', 123456789, N'AD', N'')
INSERT [dbo].[Accounts] ([AccountID], [UserName], [FullName], [Email], [Password], [PhoneNumber], [Role], [Address]) VALUES (N'DS001', N'AnhHungDS', N'Nguyen Anh Hung', N'AnhHung@gmail.com', N'anhhungDS', 369852147, N'DS', N'Le Van Viet, TP Thu Duc, HCM')
INSERT [dbo].[Accounts] ([AccountID], [UserName], [FullName], [Email], [Password], [PhoneNumber], [Role], [Address]) VALUES (N'MN001', N'Manager01', N'MANAGER', N'manager01@gmail.com', N'manager001', 987654321, N'MN', N'')
INSERT [dbo].[Accounts] ([AccountID], [UserName], [FullName], [Email], [Password], [PhoneNumber], [Role], [Address]) VALUES (N'SS001', N'SuperSale', N'Nguyen Van A', N'SuperSale@gmail.com', N'nguyenasale', 24589751, N'SS', N'')
INSERT [dbo].[Accounts] ([AccountID], [UserName], [FullName], [Email], [Password], [PhoneNumber], [Role], [Address]) VALUES (N'US001', N'Lac Long', N'Long Hong Anh', N'laclongvang@gmail.com', N'laclong01', 98564127, N'US', N'97 Hoang Huu Nam, TP Thu Duc, HCM')
GO
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (0, N'On the way')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (1, N'Delivered')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (2, N'Cancelled')
GO
INSERT [dbo].[Orders] ([OrderID], [AccountID], [TotalPrice], [Address], [StatusID]) VALUES (N'O00001', N'US001', 100000, N'Le Van Viet', 0)
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (N'001', N'Rings')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (N'002', N'Necklaces')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (N'003', N'Earrings')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (N'004', N'Bracelets')
GO
INSERT [dbo].[Diamonds] ([DiamondID], [CaratWeight], [Color], [Clarity], [Cut], [Price], [Quantity]) VALUES (N'1', 99, N'1', N'v1', N't1', 999.99, 50)
INSERT [dbo].[Diamonds] ([DiamondID], [CaratWeight], [Color], [Clarity], [Cut], [Price], [Quantity]) VALUES (N'2', 10, N'2', N'VD2', N'TD2', 123.45, 20)
INSERT [dbo].[Diamonds] ([DiamondID], [CaratWeight], [Color], [Clarity], [Cut], [Price], [Quantity]) VALUES (N'3', 55, N'3', N'vT03', N'Th03', 69.42, 10)
GO
INSERT [dbo].[Material] ([MaterialID],[MaterialName]) VALUES (1, N'Gold')
INSERT [dbo].[Material] ([MaterialID],[MaterialName]) VALUES (2, N'Silver')
INSERT [dbo].[Material] ([MaterialID],[MaterialName]) VALUES (3, N'Nickel')
GO
INSERT [dbo].[Shells] ([ShellID], [MaterialID], [Name], [ShellPrice], [Quantity]) VALUES (N'1', 1, N'midas gold', 999.99, 99)
INSERT [dbo].[Shells] ([ShellID], [MaterialID], [Name], [ShellPrice], [Quantity]) VALUES (N'2', 2, N'green silver', 69.42, 77)
INSERT [dbo].[Shells] ([ShellID], [MaterialID], [Name], [ShellPrice], [Quantity]) VALUES (N'3', 3, N'shit nickel', 12.3, 55)
GO
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductSize], [ProductPrice], [DiamondID], [ShellID], [AccountID], [Quantity], [Description], [ImageLink]) VALUES (N'PO0001', N'003', N'Diamond Earring', 7, 98765.43, N'2', N'1', N'AD001', 15, N'1',N'')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductSize], [ProductPrice], [DiamondID], [ShellID], [AccountID], [Quantity], [Description], [ImageLink]) VALUES (N'PO0002', N'001', N'Diamond Ring', 7, 12345.67, N'1', N'2', N'SS001', 7, N'2',N'')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductSize], [ProductPrice], [DiamondID], [ShellID], [AccountID], [Quantity], [Description], [ImageLink]) VALUES (N'PO0003', N'002', N'Diamond Necklace', 12, 2468.1, N'3', N'3', N'MN001', 1, N'3',N'')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductSize], [ProductPrice], [DiamondID], [ShellID], [AccountID], [Quantity], [Description], [ImageLink]) VALUES (N'PO0004', N'001', N'Fake Fraud Faux Pas', 69, 420, N'1', N'1', N'DS001', 1, N'4',N'')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductSize], [ProductPrice], [DiamondID], [ShellID], [AccountID], [Quantity], [Description], [ImageLink]) VALUES (N'PO0006', N'001', N'Fake Fraud Faux Pas', 69, 420, N'1', N'1', N'SS001', 1, N'5',N'')
GO
INSERT [dbo].[Order Detail] ([OrdersID], [ProductsID], [Quantity], [Price]) VALUES (N'O00001', N'PO0001', 2, 197530.859)
GO
