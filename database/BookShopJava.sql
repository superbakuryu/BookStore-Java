USE [BookShopJava]
GO
/****** Object:  Table [dbo].[tb_CTPN]    Script Date: 12/19/2020 10:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CTPN](
	[maCTPN] [nvarchar](50) NOT NULL,
	[maPhieuNhap] [nvarchar](50) NOT NULL,
	[maSach] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [bigint] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_CTPN] PRIMARY KEY CLUSTERED 
(
	[maCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_CTPX]    Script Date: 12/19/2020 10:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CTPX](
	[maCTPX] [nvarchar](50) NOT NULL,
	[maPhieuXuat] [nvarchar](50) NOT NULL,
	[maSach] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_CTPX] PRIMARY KEY CLUSTERED 
(
	[maCTPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_GianHang]    Script Date: 12/19/2020 10:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_GianHang](
	[maGianHang] [nvarchar](50) NOT NULL,
	[tenGianHang] [ntext] NOT NULL,
	[moTa] [ntext] NOT NULL,
 CONSTRAINT [PK_tb_GianHang] PRIMARY KEY CLUSTERED 
(
	[maGianHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NguoiDung]    Script Date: 12/19/2020 10:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NguoiDung](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tb_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_NXB]    Script Date: 12/19/2020 10:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NXB](
	[maNXB] [nvarchar](50) NOT NULL,
	[tenNXB] [ntext] NOT NULL,
	[diaChi] [ntext] NOT NULL,
	[dienThoai] [ntext] NOT NULL,
	[email] [ntext] NOT NULL,
 CONSTRAINT [PK_tb_NXB] PRIMARY KEY CLUSTERED 
(
	[maNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PhieuNhap]    Script Date: 12/19/2020 10:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PhieuNhap](
	[maPhieuNhap] [nvarchar](50) NOT NULL,
	[maNXB] [nvarchar](50) NOT NULL,
	[ngayNhap] [date] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[maPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_PhieuXuat]    Script Date: 12/19/2020 10:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PhieuXuat](
	[maPhieuXuat] [nvarchar](50) NOT NULL,
	[tenKH] [ntext] NOT NULL,
	[ngayXuat] [date] NOT NULL,
	[thanhTien] [bigint] NOT NULL,
 CONSTRAINT [PK_tb_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[maPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Sach]    Script Date: 12/19/2020 10:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Sach](
	[maSach] [nvarchar](50) NOT NULL,
	[tieuDe] [ntext] NOT NULL,
	[tacGia] [ntext] NOT NULL,
	[namXuatBan] [int] NOT NULL,
	[giaBia] [int] NOT NULL,
	[maNXB] [nvarchar](50) NOT NULL,
	[soLuongTon] [int] NOT NULL,
	[maGianHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Sach] PRIMARY KEY CLUSTERED 
(
	[maSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN1', N'PN1', N'TDDV', 5, 15000, 1111)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN20', N'PN10', N'NMTH', 4000, 1, 4000)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN21', N'PN1', N'NMTH', 1, 1, 1)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN22', N'PN11', N'TCC2', 1, 1, 1)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN23', N'PN11', N'NMTH', 1, 1, 1)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN24', N'PN12', N'TCC2', 1, 1, 1)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN25', N'PN12', N'NMTH', 1, 1, 1)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN26', N'PN13', N'TCC2', 1, 1, 1)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN27', N'PN13', N'NMTH', 1, 1, 1)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN28', N'PN14', N'TCC2', 1, 1, 1)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN29', N'PN14', N'NMTH', 1, 1, 1)
INSERT [dbo].[tb_CTPN] ([maCTPN], [maPhieuNhap], [maSach], [soLuong], [donGia], [thanhTien]) VALUES (N'CTPN30', N'PN15', N'TCC1', 3, 5, 15)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX1', N'PX1', N'TCC1', 5, 300000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX10', N'PX4', N'TDDV', 30, 600000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX11', N'PX5', N'NMTH', 1, 25000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX2', N'PX1', N'TCC2', 5, 200000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX3', N'PX1', N'NMTH', 5000, 125000000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX4', N'PX2', N'NMTH', 5, 125000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX5', N'PX3', N'TCC2', 5, 425000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX6', N'PX3', N'TCC1', 3, 255000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX7', N'PX4', N'NMTH', 10, 250000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX8', N'PX4', N'TCC1', 20, 1700000)
INSERT [dbo].[tb_CTPX] ([maCTPX], [maPhieuXuat], [maSach], [soLuong], [thanhTien]) VALUES (N'CTPX9', N'PX4', N'TCC2', 1, 85000)
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'BANCHAY', N'Sách bán chạy', N'Sách bán chạy')
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'DAIHOC', N'Sách đại học', N'Sách đại học')
INSERT [dbo].[tb_GianHang] ([maGianHang], [tenGianHang], [moTa]) VALUES (N'TINHOC', N'Sách tin học', N'Sách tin học')
INSERT [dbo].[tb_NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'@root:admin', N'admin')
INSERT [dbo].[tb_NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'admin', N'admin')
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'BACHKHOA', N'NXB Bách Khoa', N'Hoàng Mai', N'0988754852', N'nxbbachkhoa@gmail.com')
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'GIAODUC', N'NXB Giáo dục', N'Hà Nội', N'0999999999', N'giaoduc@gmail.com')
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'KIMDONG', N'NXB Kim Đồng', N'Hai Bà Trưng', N'01685245157', N'nxbkimdong@gmail.com')
INSERT [dbo].[tb_NXB] ([maNXB], [tenNXB], [diaChi], [dienThoai], [email]) VALUES (N'TUOITRE', N'NXB Tuổi Trẻ', N'Hà Nội', N'01649346164', N'nxbtuoitre@gmail.com')
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN1', N'KIMDONG', CAST(N'2018-03-04' AS Date), 1112)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN10', N'GIAODUC', CAST(N'2019-12-15' AS Date), 4000)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN11', N'GIAODUC', CAST(N'2019-12-16' AS Date), 2)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN12', N'GIAODUC', CAST(N'2019-12-16' AS Date), 2)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN13', N'GIAODUC', CAST(N'2019-12-16' AS Date), 2)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN14', N'GIAODUC', CAST(N'2019-12-16' AS Date), 2)
INSERT [dbo].[tb_PhieuNhap] ([maPhieuNhap], [maNXB], [ngayNhap], [thanhTien]) VALUES (N'PN15', N'GIAODUC', CAST(N'2019-12-17' AS Date), 15)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX1', N'Nguyễn Văn H', CAST(N'2019-01-12' AS Date), 125500000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX2', N'Phạm Xuân D', CAST(N'2019-12-15' AS Date), 125000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX3', N'Nguyễn Thị V', CAST(N'2019-12-15' AS Date), 680000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX4', N'Nguyễn Văn H', CAST(N'2019-12-16' AS Date), 2635000)
INSERT [dbo].[tb_PhieuXuat] ([maPhieuXuat], [tenKH], [ngayXuat], [thanhTien]) VALUES (N'PX5', N'fbhng', CAST(N'2019-12-16' AS Date), 25000)
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'NMTH', N'Nhập môn tin học', N'Nguyễn Văn A', 1996, 25000, N'BACHKHOA', 6894, N'DAIHOC')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'TCC1', N'Toán Cao Cấp 1', N'Nguyễn Văn H', 1996, 85000, N'GIAODUC', 49979, N'DAIHOC')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'TCC2', N'Toán Cao Cấp 2', N'Nguyễn Văn H', 1996, 85000, N'GIAODUC', 49997, N'DAIHOC')
INSERT [dbo].[tb_Sach] ([maSach], [tieuDe], [tacGia], [namXuatBan], [giaBia], [maNXB], [soLuongTon], [maGianHang]) VALUES (N'TDDV', N'Thần đồng đất việt', N'Nguyễn Thị B', 2015, 20000, N'KIMDONG', 19865, N'BANCHAY')
ALTER TABLE [dbo].[tb_CTPN]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTPN_tb_PhieuNhap] FOREIGN KEY([maPhieuNhap])
REFERENCES [dbo].[tb_PhieuNhap] ([maPhieuNhap])
GO
ALTER TABLE [dbo].[tb_CTPN] CHECK CONSTRAINT [FK_tb_CTPN_tb_PhieuNhap]
GO
ALTER TABLE [dbo].[tb_CTPN]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTPN_tb_Sach] FOREIGN KEY([maSach])
REFERENCES [dbo].[tb_Sach] ([maSach])
GO
ALTER TABLE [dbo].[tb_CTPN] CHECK CONSTRAINT [FK_tb_CTPN_tb_Sach]
GO
ALTER TABLE [dbo].[tb_CTPX]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTPX_tb_PhieuXuat] FOREIGN KEY([maPhieuXuat])
REFERENCES [dbo].[tb_PhieuXuat] ([maPhieuXuat])
GO
ALTER TABLE [dbo].[tb_CTPX] CHECK CONSTRAINT [FK_tb_CTPX_tb_PhieuXuat]
GO
ALTER TABLE [dbo].[tb_CTPX]  WITH CHECK ADD  CONSTRAINT [FK_tb_CTPX_tb_Sach] FOREIGN KEY([maSach])
REFERENCES [dbo].[tb_Sach] ([maSach])
GO
ALTER TABLE [dbo].[tb_CTPX] CHECK CONSTRAINT [FK_tb_CTPX_tb_Sach]
GO
ALTER TABLE [dbo].[tb_PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tb_PhieuNhap_tb_NXB] FOREIGN KEY([maNXB])
REFERENCES [dbo].[tb_NXB] ([maNXB])
GO
ALTER TABLE [dbo].[tb_PhieuNhap] CHECK CONSTRAINT [FK_tb_PhieuNhap_tb_NXB]
GO
ALTER TABLE [dbo].[tb_Sach]  WITH CHECK ADD  CONSTRAINT [FK_tb_Sach_tb_GianHang] FOREIGN KEY([maGianHang])
REFERENCES [dbo].[tb_GianHang] ([maGianHang])
GO
ALTER TABLE [dbo].[tb_Sach] CHECK CONSTRAINT [FK_tb_Sach_tb_GianHang]
GO
ALTER TABLE [dbo].[tb_Sach]  WITH CHECK ADD  CONSTRAINT [FK_tb_Sach_tb_NXB] FOREIGN KEY([maNXB])
REFERENCES [dbo].[tb_NXB] ([maNXB])
GO
ALTER TABLE [dbo].[tb_Sach] CHECK CONSTRAINT [FK_tb_Sach_tb_NXB]
GO
