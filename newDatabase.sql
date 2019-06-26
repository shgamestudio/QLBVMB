USE [master]
GO
/****** Object:  Database [SELL_PLANE_TICKET_DATABASE]    Script Date: 26/06/2019 08:59:51 ******/
CREATE DATABASE [SELL_PLANE_TICKET_DATABASE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SELL_PLANE_TICKET_DATABASE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SELL_PLANE_TICKET_DATABASE.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SELL_PLANE_TICKET_DATABASE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SELL_PLANE_TICKET_DATABASE_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SELL_PLANE_TICKET_DATABASE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET ARITHABORT OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET  MULTI_USER 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SELL_PLANE_TICKET_DATABASE]
GO
/****** Object:  Table [dbo].[CHUYENBAY]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHUYENBAY](
	[MACB] [varchar](10) NOT NULL,
	[MATB] [varchar](10) NULL,
	[NGAYGIO] [datetime] NULL,
	[THOIGIANBAY] [float] NULL,
	[SLGHEHANG1] [int] NULL,
	[SLGHEHANG2] [int] NULL,
	[MADG] [varchar](10) NULL,
 CONSTRAINT [PK_CB] PRIMARY KEY CLUSTERED 
(
	[MACB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTCHUYENBAY]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTCHUYENBAY](
	[MACTCB] [varchar](10) NOT NULL,
	[MACB] [varchar](10) NULL,
	[MASANBAYTG] [varchar](10) NULL,
	[THOIGIANDUNG] [float] NULL,
	[GHICHU] [nvarchar](100) NULL,
 CONSTRAINT [PK_CTCB] PRIMARY KEY CLUSTERED 
(
	[MACTCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTDOANHTHUTHANG]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTDOANHTHUTHANG](
	[MACTDOANHTHUTHANG] [varchar](10) NOT NULL,
	[MADTTHANG] [varchar](10) NULL,
	[MACB] [varchar](10) NULL,
	[SOVE] [int] NULL,
	[TYLE] [decimal](5, 2) NULL,
	[DOANHTHU] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CTDTTHANG] PRIMARY KEY CLUSTERED 
(
	[MACTDOANHTHUTHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DOANHTHUNAM]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOANHTHUNAM](
	[MADTNAM] [varchar](10) NOT NULL,
	[NAM] [varchar](5) NULL,
	[TONGDOANHTHUNAM] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DTNAM] PRIMARY KEY CLUSTERED 
(
	[MADTNAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DOANHTHUTHANG]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOANHTHUTHANG](
	[MADTTHANG] [varchar](10) NOT NULL,
	[THANG] [varchar](3) NULL,
	[MADTNAM] [varchar](10) NULL,
	[SOCHUYENBAY] [int] NULL,
	[TYLE] [decimal](5, 2) NULL,
	[TONGDOANHTHUTHANG] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DTTHANG] PRIMARY KEY CLUSTERED 
(
	[MADTTHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONGIA]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONGIA](
	[MADG] [varchar](10) NOT NULL,
	[DONGIA] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DG] PRIMARY KEY CLUSTERED 
(
	[MADG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HANGVE]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HANGVE](
	[MAHV] [varchar](10) NOT NULL,
	[TENHV] [nvarchar](20) NULL,
	[TYLE] [int] NULL,
 CONSTRAINT [PK_HV] PRIMARY KEY CLUSTERED 
(
	[MAHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HANHKHACH]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HANHKHACH](
	[MAHK] [varchar](10) NOT NULL,
	[TENHK] [nvarchar](100) NULL,
	[CMND] [nvarchar](9) NULL,
	[SDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_HK] PRIMARY KEY CLUSTERED 
(
	[MAHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUDATCHO]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUDATCHO](
	[MAPHIEUDC] [varchar](10) NOT NULL,
	[MACB] [varchar](10) NULL,
	[MAHK] [varchar](10) NULL,
	[MAHV] [varchar](10) NULL,
	[GIA] [decimal](18, 0) NULL,
	[NGAYDAT] [smalldatetime] NULL,
 CONSTRAINT [PK_PDC] PRIMARY KEY CLUSTERED 
(
	[MAPHIEUDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANBAY]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANBAY](
	[MASB] [varchar](10) NOT NULL,
	[TENSANBAY] [nvarchar](100) NULL,
 CONSTRAINT [PK_SB] PRIMARY KEY CLUSTERED 
(
	[MASB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THAMSO]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAMSO](
	[TGBAYTOITHIEU] [float] NULL,
	[SOSBTRUNGGIANTOIDA] [int] NULL,
	[TGDUNGTOITHIEU] [float] NULL,
	[TGDUNGTOIDA] [float] NULL,
	[TGCHAMNHATDATVE] [int] NULL,
	[TGCHAMNHATHUYVE] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TINHTRANGVE]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TINHTRANGVE](
	[MATTVE] [varchar](10) NOT NULL,
	[MACB] [varchar](10) NULL,
	[MAHV] [varchar](10) NULL,
	[SLGHE] [int] NULL,
	[SLGHETRONG] [int] NULL,
 CONSTRAINT [PK_TTV] PRIMARY KEY CLUSTERED 
(
	[MATTVE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TUYENBAY]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TUYENBAY](
	[MATB] [varchar](10) NOT NULL,
	[MASBDI] [varchar](10) NULL,
	[MASBDEN] [varchar](10) NULL,
 CONSTRAINT [PK_TB] PRIMARY KEY CLUSTERED 
(
	[MATB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VECHUYENBAY]    Script Date: 26/06/2019 08:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VECHUYENBAY](
	[MAVE] [varchar](10) NOT NULL,
	[MACB] [varchar](10) NULL,
	[MAHV] [varchar](10) NULL,
	[MAHK] [varchar](10) NULL,
	[GIA] [decimal](18, 0) NULL,
	[NGAYGD] [date] NULL,
	[NGAYHUY] [date] NULL,
	[LOAIVE] [nvarchar](10) NULL,
 CONSTRAINT [PK_VCB] PRIMARY KEY CLUSTERED 
(
	[MAVE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CHUYENBAY] ([MACB], [MATB], [NGAYGIO], [THOIGIANBAY], [SLGHEHANG1], [SLGHEHANG2], [MADG]) VALUES (N'CB0001', N'TB0001', CAST(0x0000A9C800000000 AS DateTime), 22, 60, 80, N'DG0000')
INSERT [dbo].[CHUYENBAY] ([MACB], [MATB], [NGAYGIO], [THOIGIANBAY], [SLGHEHANG1], [SLGHEHANG2], [MADG]) VALUES (N'CB0002', N'TB0001', CAST(0x0000AA0500000000 AS DateTime), 15, 80, 90, N'DG0002')
INSERT [dbo].[CHUYENBAY] ([MACB], [MATB], [NGAYGIO], [THOIGIANBAY], [SLGHEHANG1], [SLGHEHANG2], [MADG]) VALUES (N'CB0003', N'TB0004', CAST(0x0000AA0B00000000 AS DateTime), 18, 50, 45, NULL)
INSERT [dbo].[CHUYENBAY] ([MACB], [MATB], [NGAYGIO], [THOIGIANBAY], [SLGHEHANG1], [SLGHEHANG2], [MADG]) VALUES (N'CB0004', N'TB0003', CAST(0x0000AA4400000000 AS DateTime), 17, 30, 40, NULL)
INSERT [dbo].[CHUYENBAY] ([MACB], [MATB], [NGAYGIO], [THOIGIANBAY], [SLGHEHANG1], [SLGHEHANG2], [MADG]) VALUES (N'CB0005', N'TB0002', CAST(0x0000A9C800000000 AS DateTime), 20, 30, 40, NULL)
INSERT [dbo].[CHUYENBAY] ([MACB], [MATB], [NGAYGIO], [THOIGIANBAY], [SLGHEHANG1], [SLGHEHANG2], [MADG]) VALUES (N'CB0006', N'TB0004', CAST(0x0000AAE700000000 AS DateTime), 12, 45, 65, NULL)
INSERT [dbo].[CHUYENBAY] ([MACB], [MATB], [NGAYGIO], [THOIGIANBAY], [SLGHEHANG1], [SLGHEHANG2], [MADG]) VALUES (N'CB0007', N'TB0002', CAST(0x0000AA7200000000 AS DateTime), 13, 44, 55, NULL)
INSERT [dbo].[DONGIA] ([MADG], [DONGIA]) VALUES (N'DG0000', CAST(400000 AS Decimal(18, 0)))
INSERT [dbo].[DONGIA] ([MADG], [DONGIA]) VALUES (N'DG0001', CAST(420000 AS Decimal(18, 0)))
INSERT [dbo].[DONGIA] ([MADG], [DONGIA]) VALUES (N'DG0002', CAST(600000 AS Decimal(18, 0)))
INSERT [dbo].[DONGIA] ([MADG], [DONGIA]) VALUES (N'DG0003', CAST(630000 AS Decimal(18, 0)))
INSERT [dbo].[HANGVE] ([MAHV], [TENHV], [TYLE]) VALUES (N'1', N'VIP', 150)
INSERT [dbo].[HANGVE] ([MAHV], [TENHV], [TYLE]) VALUES (N'2', N'Thường', 100)
INSERT [dbo].[HANHKHACH] ([MAHK], [TENHK], [CMND], [SDT]) VALUES (N'HK0000', N'Hoàng', N'Hoàng', N'Hoàng')
INSERT [dbo].[HANHKHACH] ([MAHK], [TENHK], [CMND], [SDT]) VALUES (N'HK0001', N'Hoàng', N'Hoàng', N'Hoàng')
INSERT [dbo].[HANHKHACH] ([MAHK], [TENHK], [CMND], [SDT]) VALUES (N'HK0002', N'Hoàng', N'Hoàng', N'Hoàng')
INSERT [dbo].[HANHKHACH] ([MAHK], [TENHK], [CMND], [SDT]) VALUES (N'HK0003', N'Hoàng', N'Hoàng', N'Hoàng')
INSERT [dbo].[HANHKHACH] ([MAHK], [TENHK], [CMND], [SDT]) VALUES (N'HK0004', N'Hoàng', N'Hoàng', N'Hoàng')
INSERT [dbo].[HANHKHACH] ([MAHK], [TENHK], [CMND], [SDT]) VALUES (N'HK0005', N'Hoàng', N'Hoàng', N'Hoàng')
INSERT [dbo].[HANHKHACH] ([MAHK], [TENHK], [CMND], [SDT]) VALUES (N'HK0006', N'haong', N'haong', N'haong')
INSERT [dbo].[HANHKHACH] ([MAHK], [TENHK], [CMND], [SDT]) VALUES (N'HK0007', N'haong', N'haong', N'haong')
INSERT [dbo].[HANHKHACH] ([MAHK], [TENHK], [CMND], [SDT]) VALUES (N'HK0008', N'hoang', N'hoang', N'hoang')
INSERT [dbo].[HANHKHACH] ([MAHK], [TENHK], [CMND], [SDT]) VALUES (N'HK0009', N'hoang', N'123456789', N'1122332')
INSERT [dbo].[SANBAY] ([MASB], [TENSANBAY]) VALUES (N'SB0001', N'Tân Sơn Nhất')
INSERT [dbo].[SANBAY] ([MASB], [TENSANBAY]) VALUES (N'SB0002', N'Nội Bài')
INSERT [dbo].[SANBAY] ([MASB], [TENSANBAY]) VALUES (N'SB0003', N'Đà Nẵng')
INSERT [dbo].[SANBAY] ([MASB], [TENSANBAY]) VALUES (N'SB0004', N'Cà Mau')
INSERT [dbo].[SANBAY] ([MASB], [TENSANBAY]) VALUES (N'SB0005', N'Vinh')
INSERT [dbo].[SANBAY] ([MASB], [TENSANBAY]) VALUES (N'SB0006', N'Cần Thơ')
INSERT [dbo].[TINHTRANGVE] ([MATTVE], [MACB], [MAHV], [SLGHE], [SLGHETRONG]) VALUES (N'TTV0000', N'CB0001', N'1', 60, 60)
INSERT [dbo].[TINHTRANGVE] ([MATTVE], [MACB], [MAHV], [SLGHE], [SLGHETRONG]) VALUES (N'TTV0001', N'CB0001', N'2', 80, 80)
INSERT [dbo].[TINHTRANGVE] ([MATTVE], [MACB], [MAHV], [SLGHE], [SLGHETRONG]) VALUES (N'TTV0002', N'CB0002', N'1', 80, 80)
INSERT [dbo].[TINHTRANGVE] ([MATTVE], [MACB], [MAHV], [SLGHE], [SLGHETRONG]) VALUES (N'TTV0003', N'CB0002', N'2', 90, 90)
INSERT [dbo].[TUYENBAY] ([MATB], [MASBDI], [MASBDEN]) VALUES (N'TB0001', N'SB0001', N'SB0002')
INSERT [dbo].[TUYENBAY] ([MATB], [MASBDI], [MASBDEN]) VALUES (N'TB0002', N'SB0001', N'SB0003')
INSERT [dbo].[TUYENBAY] ([MATB], [MASBDI], [MASBDEN]) VALUES (N'TB0003', N'SB0003', N'SB0005')
INSERT [dbo].[TUYENBAY] ([MATB], [MASBDI], [MASBDEN]) VALUES (N'TB0004', N'SB0002', N'SB0001')
INSERT [dbo].[TUYENBAY] ([MATB], [MASBDI], [MASBDEN]) VALUES (N'TB0005', N'SB0004', N'SB0006')
INSERT [dbo].[VECHUYENBAY] ([MAVE], [MACB], [MAHV], [MAHK], [GIA], [NGAYGD], [NGAYHUY], [LOAIVE]) VALUES (N'VE0000', N'CB0001', N'1', N'HK0009', CAST(400000 AS Decimal(18, 0)), CAST(0xD23F0B00 AS Date), NULL, N'Vé mua')
INSERT [dbo].[VECHUYENBAY] ([MAVE], [MACB], [MAHV], [MAHK], [GIA], [NGAYGD], [NGAYHUY], [LOAIVE]) VALUES (N'VE0001', N'CB0002', N'1', N'HK0009', CAST(400000 AS Decimal(18, 0)), CAST(0xD23F0B00 AS Date), NULL, N'Vé mua')
ALTER TABLE [dbo].[CHUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_CB_TB] FOREIGN KEY([MATB])
REFERENCES [dbo].[TUYENBAY] ([MATB])
GO
ALTER TABLE [dbo].[CHUYENBAY] CHECK CONSTRAINT [FK_CB_TB]
GO
ALTER TABLE [dbo].[CHUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_CHUYENBAY_DONGIA] FOREIGN KEY([MADG])
REFERENCES [dbo].[DONGIA] ([MADG])
GO
ALTER TABLE [dbo].[CHUYENBAY] CHECK CONSTRAINT [FK_CHUYENBAY_DONGIA]
GO
ALTER TABLE [dbo].[CTCHUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_CTCB_CB] FOREIGN KEY([MACB])
REFERENCES [dbo].[CHUYENBAY] ([MACB])
GO
ALTER TABLE [dbo].[CTCHUYENBAY] CHECK CONSTRAINT [FK_CTCB_CB]
GO
ALTER TABLE [dbo].[CTCHUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_CTCHUYENBAY_SB] FOREIGN KEY([MASANBAYTG])
REFERENCES [dbo].[SANBAY] ([MASB])
GO
ALTER TABLE [dbo].[CTCHUYENBAY] CHECK CONSTRAINT [FK_CTCHUYENBAY_SB]
GO
ALTER TABLE [dbo].[CTDOANHTHUTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDOANHTHUTHANG_CB] FOREIGN KEY([MACB])
REFERENCES [dbo].[CHUYENBAY] ([MACB])
GO
ALTER TABLE [dbo].[CTDOANHTHUTHANG] CHECK CONSTRAINT [FK_CTDOANHTHUTHANG_CB]
GO
ALTER TABLE [dbo].[CTDOANHTHUTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDTTHANG_DTTHANG] FOREIGN KEY([MADTTHANG])
REFERENCES [dbo].[DOANHTHUTHANG] ([MADTTHANG])
GO
ALTER TABLE [dbo].[CTDOANHTHUTHANG] CHECK CONSTRAINT [FK_CTDTTHANG_DTTHANG]
GO
ALTER TABLE [dbo].[DOANHTHUTHANG]  WITH CHECK ADD  CONSTRAINT [FK_DTTHANG_DTNAM] FOREIGN KEY([MADTNAM])
REFERENCES [dbo].[DOANHTHUNAM] ([MADTNAM])
GO
ALTER TABLE [dbo].[DOANHTHUTHANG] CHECK CONSTRAINT [FK_DTTHANG_DTNAM]
GO
ALTER TABLE [dbo].[PHIEUDATCHO]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATCHO_CB] FOREIGN KEY([MACB])
REFERENCES [dbo].[CHUYENBAY] ([MACB])
GO
ALTER TABLE [dbo].[PHIEUDATCHO] CHECK CONSTRAINT [FK_PHIEUDATCHO_CB]
GO
ALTER TABLE [dbo].[PHIEUDATCHO]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATCHO_HK] FOREIGN KEY([MAHK])
REFERENCES [dbo].[HANHKHACH] ([MAHK])
GO
ALTER TABLE [dbo].[PHIEUDATCHO] CHECK CONSTRAINT [FK_PHIEUDATCHO_HK]
GO
ALTER TABLE [dbo].[PHIEUDATCHO]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATCHO_HV] FOREIGN KEY([MAHV])
REFERENCES [dbo].[HANGVE] ([MAHV])
GO
ALTER TABLE [dbo].[PHIEUDATCHO] CHECK CONSTRAINT [FK_PHIEUDATCHO_HV]
GO
ALTER TABLE [dbo].[TINHTRANGVE]  WITH CHECK ADD  CONSTRAINT [FK_TINHTRANGVE_HV] FOREIGN KEY([MAHV])
REFERENCES [dbo].[HANGVE] ([MAHV])
GO
ALTER TABLE [dbo].[TINHTRANGVE] CHECK CONSTRAINT [FK_TINHTRANGVE_HV]
GO
ALTER TABLE [dbo].[TINHTRANGVE]  WITH CHECK ADD  CONSTRAINT [FK_TTV_CB] FOREIGN KEY([MACB])
REFERENCES [dbo].[CHUYENBAY] ([MACB])
GO
ALTER TABLE [dbo].[TINHTRANGVE] CHECK CONSTRAINT [FK_TTV_CB]
GO
ALTER TABLE [dbo].[TUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_TTTUYENBAY_SB] FOREIGN KEY([MASBDI])
REFERENCES [dbo].[SANBAY] ([MASB])
GO
ALTER TABLE [dbo].[TUYENBAY] CHECK CONSTRAINT [FK_TTTUYENBAY_SB]
GO
ALTER TABLE [dbo].[TUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_TTUYENBAY_SB] FOREIGN KEY([MASBDEN])
REFERENCES [dbo].[SANBAY] ([MASB])
GO
ALTER TABLE [dbo].[TUYENBAY] CHECK CONSTRAINT [FK_TTUYENBAY_SB]
GO
ALTER TABLE [dbo].[TUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_TUYENBAY_SB] FOREIGN KEY([MASBDI])
REFERENCES [dbo].[SANBAY] ([MASB])
GO
ALTER TABLE [dbo].[TUYENBAY] CHECK CONSTRAINT [FK_TUYENBAY_SB]
GO
ALTER TABLE [dbo].[TUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_TUYENBAY_SB123] FOREIGN KEY([MASBDI])
REFERENCES [dbo].[SANBAY] ([MASB])
GO
ALTER TABLE [dbo].[TUYENBAY] CHECK CONSTRAINT [FK_TUYENBAY_SB123]
GO
ALTER TABLE [dbo].[VECHUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_VECB_CB] FOREIGN KEY([MACB])
REFERENCES [dbo].[CHUYENBAY] ([MACB])
GO
ALTER TABLE [dbo].[VECHUYENBAY] CHECK CONSTRAINT [FK_VECB_CB]
GO
ALTER TABLE [dbo].[VECHUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_VECHUYENBAY_HK] FOREIGN KEY([MAHK])
REFERENCES [dbo].[HANHKHACH] ([MAHK])
GO
ALTER TABLE [dbo].[VECHUYENBAY] CHECK CONSTRAINT [FK_VECHUYENBAY_HK]
GO
ALTER TABLE [dbo].[VECHUYENBAY]  WITH CHECK ADD  CONSTRAINT [FK_VECHUYENBAY_HV] FOREIGN KEY([MAHV])
REFERENCES [dbo].[HANGVE] ([MAHV])
GO
ALTER TABLE [dbo].[VECHUYENBAY] CHECK CONSTRAINT [FK_VECHUYENBAY_HV]
GO
USE [master]
GO
ALTER DATABASE [SELL_PLANE_TICKET_DATABASE] SET  READ_WRITE 
GO
