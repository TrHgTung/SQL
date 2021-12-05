create database QUANLIBANHANG
go

use QUANLIBANHANG
go

create table KHACHHANG(
	MAKH char(10) not null,
	HOTEN nvarchar(20) not null,
	PHAI nvarchar(10) not null check (PHAI = N'NAM' OR PHAI = N'NỮ'),
	DCHI nvarchar(50) not null,
	SODT varchar(15),
	NGSINH SMALLdateTIME not null,
	NGDK date not null,
	DOANHSO money not null,

	constraint pk_KHACHHANG primary key(MAKH) --- MAKH la khoa chinh
	)
	go
---

insert into KHACHHANG(MAKH,HOTEN,PHAI,DCHI,SODT,NGSINH,NGDK,DOANHSO) values (
'KH00001',
N'Nguyễn Văn Anh',
N'NAM',
N'120 Trần Hưng Đạo',
'0909256132', 
'1990-01-25',
'2021-06-29',
'1000000.0000'
)
GO

create table NHANVIEN(
	MANV char(10) not null,
	HOTEN nvarchar(20) not null,
	PHAI nvarchar(10) not null check (PHAI = N'NAM' OR PHAI = N'NỮ'),
	SODT varchar(15),
	NGVL SMALLdateTIME not null,

	constraint pk_NHANVIEN primary key(MANV) ---MANV la khoa chinh
	)
	go

insert into NHANVIEN(MANV,HOTEN,PHAI,SODT,NGVL) VALUES (
'NV00001',
N'Lý Văn Cơ',
N'NAM',
'0123909887',
'2020-12-13'
)
GO

create table NHACC(
	MANCC char(10) not null,
	TENNCC nvarchar(20) not null,
	DCHI nvarchar(50) not null,
	SODT varchar(15) NOT NULL,

	constraint pk_NHACC primary key(MANCC) ---MANCC la khoa chinh
	)
	go

insert into NHACC(MANCC,TENNCC, DCHI, SODT) values (
'CC00001',
N'Công Ty TNHH Con Cò',
N'18B Đường số 1 - Bình Tân - TPHCM',
'0121986788'
)
GO

create table SANPHAM(
	MASP char(10) not null,
	TENSP nvarchar(20) not null,
	DVT CHAR(20) NOT NULL,
	HANSD SMALLdateTIME not null,
	NHCC NVARCHAR(30) NOT NULL,
	GIA MONEY NOT NULL,

	constraint pk_SANPHAM primary key(MASP) ---MASP khoa chinh
	)
	go

insert into SANPHAM(MASP,TENSP,DVT,HANSD,NHCC,GIA) VALUES (
'SP00001',
N'Gạo Long An',
N'KILÔGRAM',
'2022-12-12',
'RICELONGAN',
'18000.0000'
)
GO

create table HOADON(
	SOHD char(20) not null,
	NGHD SMALLdateTIME not null,
	MANV CHAR(10) NOT NULL,
	MAKH CHAR(10),
	TRIGIA MONEY NOT NULL,

	constraint pk_HOADON primary key(SOHD)---SOHD la khoa chinh
	)
	go

INSERT INTO HOADON(SOHD, NGHD, MANV, MAKH, TRIGIA) VALUES(
'HD0A001',
'2021-12-11',
'NV00003',
'KH00015TV',
'350000.0000'
)

create table CTHD(
	SOHD char(20) not null,
	
	MASP CHAR(10) NOT NULL,
	SL TINYINT NOT NULL,

	constraint pk_CTHD primary key(SOHD) --khia chinh
	)
	go

INSERT INTO CTHD(SOHD,MASP, SL) VALUES (
'HD0A001',
'SP00020',
'20'
)