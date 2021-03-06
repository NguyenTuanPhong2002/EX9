USE [QLDETAI]
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_STUDENT]    Script Date: 19/11/2021 11:29:32 CH ******/
DROP PROCEDURE [dbo].[UPDATE_STUDENT]
GO
/****** Object:  StoredProcedure [dbo].[Update_Detai]    Script Date: 19/11/2021 11:29:32 CH ******/
DROP PROCEDURE [dbo].[Update_Detai]
GO
/****** Object:  StoredProcedure [dbo].[information_Student_id]    Script Date: 19/11/2021 11:29:32 CH ******/
DROP PROCEDURE [dbo].[information_Student_id]
GO
/****** Object:  StoredProcedure [dbo].[INFORMATION_STUDENT]    Script Date: 19/11/2021 11:29:32 CH ******/
DROP PROCEDURE [dbo].[INFORMATION_STUDENT]
GO
/****** Object:  StoredProcedure [dbo].[information_DETAITH_id]    Script Date: 19/11/2021 11:29:32 CH ******/
DROP PROCEDURE [dbo].[information_DETAITH_id]
GO
/****** Object:  StoredProcedure [dbo].[information_Detai_id]    Script Date: 19/11/2021 11:29:32 CH ******/
DROP PROCEDURE [dbo].[information_Detai_id]
GO
/****** Object:  StoredProcedure [dbo].[Information_Detai]    Script Date: 19/11/2021 11:29:32 CH ******/
DROP PROCEDURE [dbo].[Information_Detai]
GO
/****** Object:  StoredProcedure [dbo].[INFORMATION]    Script Date: 19/11/2021 11:29:32 CH ******/
DROP PROCEDURE [dbo].[INFORMATION]
GO
/****** Object:  Table [dbo].[THDETAI]    Script Date: 19/11/2021 11:29:32 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[THDETAI]') AND type in (N'U'))
DROP TABLE [dbo].[THDETAI]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 19/11/2021 11:29:32 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SINHVIEN]') AND type in (N'U'))
DROP TABLE [dbo].[SINHVIEN]
GO
/****** Object:  Table [dbo].[DETAI]    Script Date: 19/11/2021 11:29:32 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DETAI]') AND type in (N'U'))
DROP TABLE [dbo].[DETAI]
GO
/****** Object:  Table [dbo].[DETAI]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETAI](
	[MaDetai] [nvarchar](max) NOT NULL,
	[TenDetai] [nvarchar](max) NULL,
	[LoaiDetai] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MASV] [nvarchar](max) NOT NULL,
	[TenSV] [nvarchar](max) NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[Ngaysinh] [nvarchar](50) NULL,
	[DiachiSv] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THDETAI]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THDETAI](
	[MaDetai] [nvarchar](max) NOT NULL,
	[MASV] [nvarchar](max) NOT NULL,
	[Nguoihuongdan] [nvarchar](max) NULL,
	[Ngaybatdau] [nvarchar](50) NULL,
	[Ngayketthuc] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[DETAI] ([MaDetai], [TenDetai], [LoaiDetai]) VALUES (N'1', N'abc', N'1')
INSERT [dbo].[DETAI] ([MaDetai], [TenDetai], [LoaiDetai]) VALUES (N'2', N'acb', N'1')
INSERT [dbo].[DETAI] ([MaDetai], [TenDetai], [LoaiDetai]) VALUES (N'3', N'bac', N'2')
INSERT [dbo].[DETAI] ([MaDetai], [TenDetai], [LoaiDetai]) VALUES (N'4', N'bca', N'2')
INSERT [dbo].[DETAI] ([MaDetai], [TenDetai], [LoaiDetai]) VALUES (N'5', N'cab', N'3')
GO
INSERT [dbo].[SINHVIEN] ([MASV], [TenSV], [Gioitinh], [Ngaysinh], [DiachiSv]) VALUES (N'1', N'123', NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MASV], [TenSV], [Gioitinh], [Ngaysinh], [DiachiSv]) VALUES (N'2', N'132', NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MASV], [TenSV], [Gioitinh], [Ngaysinh], [DiachiSv]) VALUES (N'3', N'213', NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MASV], [TenSV], [Gioitinh], [Ngaysinh], [DiachiSv]) VALUES (N'4', N'231', NULL, NULL, NULL)
INSERT [dbo].[SINHVIEN] ([MASV], [TenSV], [Gioitinh], [Ngaysinh], [DiachiSv]) VALUES (N'5', N'312', NULL, NULL, NULL)
GO
INSERT [dbo].[THDETAI] ([MaDetai], [MASV], [Nguoihuongdan], [Ngaybatdau], [Ngayketthuc]) VALUES (N'1', N'1', N'qwe', NULL, NULL)
INSERT [dbo].[THDETAI] ([MaDetai], [MASV], [Nguoihuongdan], [Ngaybatdau], [Ngayketthuc]) VALUES (N'1', N'2', N'asdasd', NULL, NULL)
INSERT [dbo].[THDETAI] ([MaDetai], [MASV], [Nguoihuongdan], [Ngaybatdau], [Ngayketthuc]) VALUES (N'2', N'1', N'adad', N'11/11/1111', N'')
INSERT [dbo].[THDETAI] ([MaDetai], [MASV], [Nguoihuongdan], [Ngaybatdau], [Ngayketthuc]) VALUES (N'3', N'4', N'dsfsdfdsf123', N'', N'')
GO
/****** Object:  StoredProcedure [dbo].[INFORMATION]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[INFORMATION]

AS


GO
/****** Object:  StoredProcedure [dbo].[Information_Detai]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Information_Detai]

AS
BEGIN
	select * from THDETAI
END

GO
/****** Object:  StoredProcedure [dbo].[information_Detai_id]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[information_Detai_id]

@MaDetai nvarchar(MAX),
@MASV nvarchar(MAX)
AS
BEGIN
	select * from THDETAI where MaDetai=@MaDetai and MASV=@MASV
END
GO
/****** Object:  StoredProcedure [dbo].[information_DETAITH_id]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[information_DETAITH_id]


@MaDetai nvarchar(MAX)
AS
BEGIN
	select * from DETAI where MaDetai=@MaDetai
END

GO
/****** Object:  StoredProcedure [dbo].[INFORMATION_STUDENT]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[INFORMATION_STUDENT]
@MASV nvarchar(MAX)
AS
BEGIN
	select * from SINHVIEN where MASV=@MASV
END
GO
/****** Object:  StoredProcedure [dbo].[information_Student_id]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[information_Student_id]


@MASV nvarchar(MAX)
AS
BEGIN
	select * from SINHVIEN where MASV=@MASV
END
GO
/****** Object:  StoredProcedure [dbo].[Update_Detai]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Update_Detai]

@MaDetai nvarchar(MAX),
@MASV nvarchar(MAX),
@Nguoihuongdan nvarchar(MAX),
@Ngaybatdau nvarchar(50),
@Ngayketthuc nvarchar(50)

AS
BEGIN
	update THDETAI set MASV=@MASV, Nguoihuongdan=@Nguoihuongdan, Ngaybatdau=@Ngaybatdau, Ngayketthuc=@Ngayketthuc where MaDetai=@MaDetai
END

GO
/****** Object:  StoredProcedure [dbo].[UPDATE_STUDENT]    Script Date: 19/11/2021 11:29:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UPDATE_STUDENT]
@MASV nvarchar(MAX),
@TenSV nvarchar(MAX),
@Gioitinh nvarchar(50),
@Ngaysinh nvarchar(50),
@DiachiSv nvarchar(MAX)

AS
BEGIN
	update SINHVIEN set TenSV=@TenSV, Gioitinh=@Gioitinh, Ngaysinh=@Ngaysinh, DiachiSv=@DiachiSv where MASV=@MASV
END
GO
