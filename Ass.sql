
USE [Wish]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CusID] [int] IDENTITY(1,1) NOT NULL,
	[Cusname] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (1, N'ss', N'1111', N'asdsdsd')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (2, N'www', N'444', N'ddfff')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (3, N'tuan', N'1234567', N'nha tao')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (4, N'', N'', N'')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (5, N'tuan', N'1234', N'sdsds')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (6, N'anhtuan', N'6533', N'sdddd')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (7, N'acxx', N'22222', N'sddd')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (8, N'anhtuan', N'33333333', N'dddddd')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (9, N'aa', N'ss', N'ccc')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (10, N'', N'', N'')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (11, N'aaa', N'22222', N'2222')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (12, N'', N'', N'')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (13, N'aaaaaaa', N'2222222222', N'sfdghdsdfwdgf')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[cusID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (4, 2, CAST(0xB9000B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (5, 3, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (6, 4, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (7, 5, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (8, 6, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (9, 7, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (10, 8, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (11, 9, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (12, 10, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (13, 11, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (14, 12, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (15, 13, CAST(0xBC430B00 AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[product]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
drop table [dbo].[product]
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Vera', N'CZB2VM', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'SFS0IW', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'Robin', N'KIS9AF', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (28, N'mra', N'mra', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (29, N'mrb', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (30, N'Camden', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Trái cây Việt Nam')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Trái cây Hàn Quốc')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N' Trái cây New Zealand')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Trái cây Mĩ')
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'Dưa Hấu Không Hạt', N'https://product.hstatic.net/1000400508/product/dua_hau_khong_hat_2_20ee06890331432da3904e4f247ce282_94ccfef7d53d43c0ae2e695ff18ffa29_master.jpg', 82.0000, N'Dưa hấu không hạt quả 3kg', N'Dưa hấu không hạt là loại trái cây Việt Nam siêu giải nhiệt, nhiều nước, rất được ưa chuộng nhất là trong mùa hè. Loại dưa này có trái to, tròn có nhiều sọc xanh đậm ruột đỏ, không hạt, ăn rất bổ và mát.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Dâu tây Hàn Quốc', N'https://vinfruits.com/wp-content/uploads/2016/12/5B20BCCC-26AD-4258-BE1E-4E68B0E0C374-1024x1024.jpg', 350.0000, N'Dâu tây Hàn Quốc', N'Trái có kích thước lớn, đỏ tươi. Rất thơm, vị ngọt. Trái căng mọng, không bị dập nát. Nhập khẩu trực tiếp từ Hàn Quốc', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Dứa Mật', N'https://product.hstatic.net/1000400508/product/1116_cd82d11fc0de48fd95661316bce37302_b9a45791e5a34dc7b0882aff20cd360d_db57b73a08084d77a3b3c08afed95fdd_master.png', 48.0000, N'Dứa mật quả 1,5kg', N'Dứa là một loại trái cây có vị ngọt và màu sắc bắt mắt nên rất dễ kết hợp để chế biến thành nhiều món ăn ngon như thịt heo sốt dứa, dứa xào cà rốt, canh chua, đậu phụ sốt dứa…. Bên cạnh đó, có thể rửa gọt vỏ và bỏ mắt là có thể ăn trực tiếp hoặc làm nước ép, sinh tố.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Hồng treo dẻo Hàn Quốc', N'https://vinfruits.com/wp-content/uploads/2017/02/goodsImage.jpg', 299.0000, N'Hồng treo dẻo một nắng Hàn Quốc', N'Phương thức sấy Hồng dẻo một nắng Hàn Quốc bắt nguồn từ Nhật Bản: sấy 100% bằng ánh nắng mặt trời và khô tự nhiên. Quả hồng dẻo khô có lượng đường tự nhiên cao, ăn mềm và hương vị rất ngọt ngào.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Bưởi Da Xanh Loại 1 (Mekostar)', N'https://product.hstatic.net/1000400508/product/buoi_da_xanh_l1_meko_18da1996166a4b98b2cf863c37faeefc_c8c12671ac0b4a4ea3056660b65d00b5_1024x1024.jpg', 88.500 ,N'Bưởi Da Xanh Loại 1, quả 1,5kg', N'Bưởi Da Xanh Loại 1 (Mekostar) có lớp vỏ lớp vỏ màu xanh, tép bưởi màu hồng, pha lẫn vị ngọt thanh và vị chua dịu rất được người tiêu dùng ưa chuộng trong các loại trái cây Việt Nam', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Lê Hàn Quốc', N'https://vinfruits.com/wp-content/uploads/2016/12/le-han-quoc-vinfruits-2-min-1024x1024.jpg', 155.0000, N'Lê chuẩn gốc Hàn Quốc, quả to, tươi ngon, đi biếu tặng rất sang.', N'Lê chuẩn gốc Hàn Quốc, quả to, tươi ngon, đi biếu tặng rất sang. Hàng loại 1, khối lượng trung bình từ 650g – 700g/ trái. Thùng tiêu chuẩn 5kg (gift pack) hoặc thùng 15kg. Lê nhiều nước, giòn và ngọt, vỏ mỏng, màu nâu hấp dẫn', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Mít Giống Thái Cắt', N'https://product.hstatic.net/1000400508/product/1094_eab55136cdf6456785217669e6b1c4cf_c4ee76d0bdd64ef99bae96977fc1d3a0_71a84c45073a40fa95aecf11c38bcc4f_master.jpg', 49.0000, N'Mít Giống Thái Cắt, miếng 1kg', N'Mít giống Thái cắt miếng là giống có quả thuôn ngắn, màu sắc vàng tươi, thịt quả có màu vàng đậm. Mít là loại trái cây Việt Nam quá đỗi quen thuộc, với vị ngọt và mùi thơm đặc trưng. Ngoài ra, mít còn được biết đến là loại trái cây đặc sản nổi tiếng của Việt Nam.', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Nho đen Mĩ', N'https://vinfruits.com/wp-content/uploads/2016/12/nho-den-my-vinfruits-1-min-1024x1024.jpg', 295.000, N'Nho đen không hạt', N'Nho đen ngon nhất thế giới hiện nay: trái tròn, cực giòn và ngọt', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Cherry New Zealand', N'https://vinfruits.com/wp-content/uploads/2020/09/cherry-do-my-vinfruits-7-min-1024x1024.jpg', 599.0000, N'Cherry No. 1 (Size 28) New Zealand', N'Cherry New Zealand vỏ màu đỏ sẫm, quả căng mọng, chắc, bóng, vị ngọt. Những quả Cherry New Zealand Big Size căng bóng tại hệ thống VinFruits luôn là mặt hàng được khách hàng Việt Nam đặc biệt ưa chuộng, một đặc sản đắt tiền và thường dùng để làm quà biếu.', 3, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Cam vàng Navel Mỹ', N'https://vinfruits.com/wp-content/uploads/2018/11/cam-vang-my-vinfruits-1-1024x1024.jpg', 135.0000, N'Cam vàng không hạt', N'Quả to, ngoài vỏ màu vàng tươi. Vị ngọt, không hạt, mọng nước, tép dày.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Kiwi Vàng New Zealand', N'https://vinfruits.com/wp-content/uploads/2017/01/kiwi-vang-newzealand-vinfruits-2-min-1024x1024.jpg', 275.0000, N'Kiwi Vàng New Zealand', N'Kiwi vàng New Zealand  là loại quả ngon số 1 thế giới, với quy trình từ trồng, chăm bón đến thu, hái, vận chuyển được chính phủ New Zealand kiểm soát rất chặt chẽ để đảm bảo quả kiwi luôn đồng đều và đủ tiêu chuẩn.', 3, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Kiwi vàng Organic NewZealand', N'https://vinfruits.com/wp-content/uploads/2017/01/kiwi-vang-newzealand-vinfruits-3-min-1024x1024.jpg', 345.0000, N'Kiwi vàng Organic NewZealand', N'Quả Kiwi Zespri Organic được trồng và được chứng nhận theo tiêu chuẩn hữu cơ nghiêm ngặt nhất. Kiwi vàng Zespri Organic quả to, tươi ngon, mọng nước, cầm cứng tay. Cái vị ngọt ngọt xen lẫn chua dịu nhẹ thanh mát khi thưởng thức (kiwi vàng organic chính tới). Khi kiwi vàng organic đã chín muồi vị sẽ chuyển sang ngọt đậm vị, cầm mềm tay, thơm hơn nữa', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'Kiwi Xanh New Zealand', N'https://vinfruits.com/wp-content/uploads/2017/01/kiwi-xanh-newzealand-vinfruits-1-min-1024x1024.jpg', 135.0000, N'Kiwi Xanh New Zealand', N'Kiwi xanh Newzealand có vỏ màu nâu, nhiều lông xù xì hơn kiwi vàng. Kiwi xanh có thịt quả màu xanh ngọc rất đẹp mắt, với nhiều hạt đen tạo thành 1 vòng tròn xung quanh trục dọc của quả. Kiwi xanh khi chín có vị rất ngọt, xanh có vị chua', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Táo Xanh Granny Smith Mỹ', N'https://vinfruits.com/wp-content/uploads/2017/02/tao-xanh-my-vinfruits-6-1024x1024.jpg', 135.0000, N'Táo xanh không hạt', N'Táo xanh Granny Smith Nam Phi/ Mỹ  có màu xanh lá, vị chua đậm, rất giòn, nhiều nước.', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Nho xanh Mĩ', N'https://vinfruits.com/wp-content/uploads/2017/02/nho-xanh-my-vinfruits-2-min-1024x1024.jpg', 325.0000, N'Nho xanh không hạt Mĩ', N'Quả nhỏ vừa, giòn ngọt, màu xanh hổ phách, vị ngọt mát, rất giòn và không có hạt', 4, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Việt quất Mỹ', N'https://vinfruits.com/wp-content/uploads/2016/12/viet-quat-my-vinfruits-2-1024x1024.jpg', 145.0000, N'Việt quất Mĩ', N'Việt quất tươi nhập khẩu từ Mỹ là một trong những loại trái cây được yêu chuộng nhất hiện nay. Trái rất to, nhiều phấn, tươi, ngọt và rất mọng nước.', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Táo Rockit Newzealand', N'https://vinfruits.com/wp-content/uploads/2017/02/t1-01-1024x1024.jpg', 155.0000, N'Táo Rockit Newzealand', N'Táo Rockit là dòng táo có nguồn gốc xuất xứ từ vịnh Hawke của New Zealand với hình dáng nhỏ, vỏ ngoài màu hồng đậm pha chút sắc vàng; có tác dụng giảm cân, đẹp da, rất được nhiều chị em phụ nữ ưa chuộng.', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Táo Kiku New Zealand', N'http://fruitshop.com.vn/image/cache/data/2_24869_e_v1-300x300.jpg', 90.0000, N'Táo Kiku New Zealand', N'Được coi loại táo ngọt nhất thế giới, thậm chí ngọt hơn táo Fuji đến 20%. Trái táo Kiku có vẻ ngoài sang trọng được tô điểm bới lớp vỏ màu đỏ ruby trên nền vàng tươi. Mặc dù được trồng nhiều ở Mỹ nhưng nó lại có xuất xứ từ vườn ươm Italy với nguồn gốc gen lấy từ Fuji.', 3, 7)
SET IDENTITY_INSERT [dbo].[product] OFF
select * from [dbo].[Account]
select * from [dbo].Category 
drop table [dbo].[OrderDetail]
CREATE TABLE [dbo].[OrderDetail](
	[orderID] [int] NOT NULL,
	[proID] [int] NOT NULL,
	[quantity] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (5, 22, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (10, 22, 2)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (11, 22, 2)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (11, 23, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (12, 23, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (13, 22, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (13, 23, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (14, 22, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (15, 22, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (15, 23, 4)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (12, 22, 2)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (14, 23, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (15, 26, 1)
/****** Object:  ForeignKey [FK__Order__cusID__412EB0B6]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([cusID])
REFERENCES [dbo].[Customer] ([CusID])
GO
/****** Object:  ForeignKey [FK__OrderDeta__order__3B75D760]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([OrderId])
GO
/****** Object:  ForeignKey [FK__OrderDeta__proID__3C69FB99]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([proID])
REFERENCES [dbo].[product] ([id])
GO
/****** Object:  ForeignKey [FK__product__cateID__117F9D94]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
/****** Object:  ForeignKey [FK__product__sell_ID__1273C1CD]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([sell_ID])
REFERENCES [dbo].[Account] ([uID])
GO
GO
/****** Object:  ForeignKey [FK__Order__cusID__412EB0B6]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK__Order__cusID__412EB0B6]
GO
/****** Object:  ForeignKey [FK__OrderDeta__order__3B75D760]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__order__3B75D760]
GO
/****** Object:  ForeignKey [FK__OrderDeta__proID__3C69FB99]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__proID__3C69FB99]
GO
/****** Object:  ForeignKey [FK__product__cateID__117F9D94]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__cateID__117F9D94]
GO
/****** Object:  ForeignKey [FK__product__sell_ID__1273C1CD]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__sell_ID__1273C1CD]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__order__3B75D760]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__proID__3C69FB99]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__cateID__117F9D94]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__sell_ID__1273C1CD]
GO
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK__Order__cusID__412EB0B6]
GO