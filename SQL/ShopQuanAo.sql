use QuanLyShopQuanAo
go


CREATE TABLE TaiKhoan(
    TenTaiKhoan char(10) PRIMARY KEY,
    MatKhau char(100) NOT NULL,
    HoTen nvarchar(255) NOT NULL,
    Email char(255),
    SDT int NOT NULL,
    NgayTao DATE NOT NULL,
    Enable bit NOT NULL
);
go

CREATE TABLE Role(
    MaRole char(10) PRIMARY KEY,
    TenRole nvarchar(35) NOT NULL,
    Path varchar(255) ,
    GhiChu nvarCHAR(255),
    Enable bit NOT NULL,
    
);
go

CREATE TABLE RoleTaiKhoan(
    MaRole		char(10) foreign key references Role(MaRole),
    TenTaiKhoan	char(10) foreign key references TaiKhoan(TenTaiKhoan),
    KhichHoat	int NOT NULL,
    GhiChu		varchar(255) NOT NULL,
    Enable		bit NOT NULL,
	constraint MaRole_TenTaiKhoan PRIMARY KEY (MaRole,TenTaiKhoan)
);
GO

CREATE TABLE NhanVien(
    MaNhanVien char(10) primary key,
    TenNhanVien nvarchar(30) NOT NULL,
    Role char(20) NOT NULL,
    MaKhau char(30) NOT NULL,
    Enable bit NOT NULL,

);
go

CREATE TABLE KhachHang(
    MaKhachHang char(10) primary key,
    TenKhachHang nvarchar(35) NOT NULL,
    DiaChi nvarchar(100),
    SDT char(12) NOT NULL,
    Enable bit NOT NULL,
);
CREATE TABLE MauSac(
    MaMau char(10) primary Key,
    TenMau nvarchar(20) NOT NULL,
    Enable bit NOT NULL,
);
CREATE TABLE Size(
    MaSize char(10) primary Key,
    TenSize nvarchar(10) NOT NULL,
    Enable bit NOT NULL,
);
go
CREATE TABLE SanPham(
    MaSP char(10) primary Key,
    TenSP nvarchar(35) NOT NULL,
    GiaBan int NOT NULL,
    SLTon int NOT NULL,
    NhaCungCap nvarchar(35) NOT NULL,
    IDMau char(10) foreign key references MauSac(MaMau),
    IDSize char(10) foreign key references Size(MaSize),
	GhiChu nvarchar(100),
    Enable bit NOT NULL,
);
CREATE TABLE HoaDon(
    MaHoaDon char(10) PRIMARY KEY,
    NgayLap DATE NOT NULL,
    TongTien int NOT NULL,
    MaKH char(10) foreign key references KhachHang(MaKhachHang),
    MaNV char(10) foreign key references NhanVien(MaNhanVien),
    TrangThai varchar(255) NOT NULL,
    Enable bit NOT NULL,
	
);
CREATE TABLE ChiTietHoaDon(
    MaHD char(10) foreign key references HoaDon(MaHoaDon),
    MaSP char(10) foreign key references SanPham(MaSP),
    SL tinyint NOT NULL,
    GiaBan int NOT NULL,
    GhiChu nvarchar(255) ,
    Enable bit NOT NULL,
	constraint MaHD_MaSP primary key(MaHD,MaSP)
);
CREATE TABLE PhieuNhapHang(
    MaPhieuNhap char(10) primary key,
    NgayNhap DATE NOT NULL,
    NhaCungCap nvarchar(35) NOT NULL,
    MaNhanVien char(10) foreign key references NhanVien(MaNhanVien),
    Enable bit NOT NULL,
);
CREATE TABLE ChiTietPhieuNhap(
    MaPhieuNhap char(10) foreign key references PhieuNhapHang(MaPhieuNhap),
    MaSP char(10) NOT NULL,
    SL int NOT NULL,
    GiaNhap BIGint NOT NULL,
    GhiChu nvarchar(255) NOT NULL,
    Enable bit NOT NULL,
	constraint MaPN_MaSP primary key(MaPhieuNhap,MaSP)
);


INSERT INTO MauSac (MaMau, TenMau, Enable)
VALUES 
('MS01', N'Đỏ', 1),
('MS02', N'Xanh Dương', 1),
('MS03', N'Xanh Lá', 1),
('MS04', N'Vàng', 1),
('MS05', N'Trắng', 1),
('MS06', N'Đen', 1),
('MS07', N'Hồng', 1),
('MS08', N'Cam', 1),
('MS09', N'Tím', 1),
('MS10', N'Xám', 1);

INSERT INTO Size (MaSize, TenSize, Enable)
VALUES 
('S01', 'XS', 1),
('S02', 'S', 1),
('S03', 'M', 1),
('S04', 'L', 1),
('S05', 'XL', 1),
('S06', 'XXL', 1),
('S07', 'XXXL', 1),
('S08', '4XL', 1),
('S09', '5XL', 1),
('S10', '6XL', 1);
INSERT INTO SanPham (MaSP, TenSP, GiaBan, SLTon, NhaCungCap, IDMau, IDSize, GhiChu, Enable)
VALUES 
('SP001', N'Áo Thun', 200000, 100, 'NCC01', 'MS01', 'S01', N'Áo thun nam', 1),
('SP002', N'Áo Khoác', 500000, 50, 'NCC02', 'MS02', 'S02', N'Áo khoác nữ', 1),
('SP003', N'Quần Jean', 300000, 70, 'NCC03', 'MS03', 'S03', N'Quần jean xanh', 1),
('SP004', N'Giày Sneaker', 700000, 40, 'NCC04', 'MS04', 'S04', N'Giày thể thao', 1),
('SP005', N'Túi Xách', 250000, 90, 'NCC05', 'MS05', 'S05', N'Túi xách nữ', 1),
('SP006', N'Nón Lưỡi Trai', 150000, 150, 'NCC01', 'MS06', 'S06', N'Nón thời trang', 1),
('SP007', N'Váy Dạ Hội', 900000, 30, 'NCC02', 'MS07', 'S07', N'Váy nữ cao cấp', 1),
('SP008', N'Thắt Lưng', 120000, 80, 'NCC03', 'MS08', 'S08', N'Thắt lưng da', 1),
('SP009', N'Áo Sơ Mi', 350000, 60, 'NCC04', 'MS09', 'S09', N'Áo sơ mi trắng', 1),
('SP010', N'Giày Cao Gót', 450000, 45, 'NCC05', 'MS10', 'S10', N'Giày nữ cao gót', 1);
INSERT INTO KhachHang (MaKhachHang, TenKhachHang, DiaChi, SDT, Enable)
VALUES 
('KH001', N'Nguyen Van A', '123 Nguyen Trai, Hanoi', '0912345678', 1),
('KH002', N'Tran Thi B', '456 Tran Hung Dao, HCMC', '0987654321', 1),
('KH003', N'Le Thi C', '789 Le Loi, Da Nang', '0923456789', 1),
('KH004', N'Pham Van D', '101 Phan Chu Trinh, Hai Phong', '0945678901', 1),
('KH005', N'Hoang Thi E', '202 Hoang Van Thu, Hue', '0961234567', 1),
('KH006', N'Dang Van F', '303 Hai Ba Trung, HCMC', '0934567890', 1),
('KH007', N'Bui Thi G', '404 Bach Dang, Da Nang', '0976543210', 1),
('KH008', N'Do Van H', '505 Ly Thuong Kiet, Hanoi', '0901234567', 1),
('KH009', N'Vu Thi I', '606 Nguyen Hue, HCMC', '0954321098', 1),
('KH010', N'Nguyen Van J', '707 Tran Phu, Nha Trang', '0998765432', 1);

INSERT INTO NhanVien (MaNhanVien, TenNhanVien, Role, MaKhau, Enable)
VALUES 
('NV001', N'Nguyen Van An', 'Admin', 'password001', 1),
('NV002', N'Tran Thi Bich', 'Manager', 'password002', 1),
('NV003', N'Le Van Cuong', 'Sales', 'password003', 1),
('NV004', N'Pham Thi Dung', 'Warehouse', 'password004', 1),
('NV005', N'Hoang Van E', 'Sales', 'password005', 1),
('NV006', N'Dang Thi F', 'Customer Support', 'password006', 1),
('NV007', N'Bui Van G', 'Admin', 'password007', 1),
('NV008', N'Do Thi H', 'Warehouse', 'password008', 1),
('NV009', N'Vu Van I', 'Sales', 'password009', 1),
('NV010', N'Nguyen Thi J', 'Customer Support', 'password010', 1); 

INSERT INTO HoaDon (MaHoaDon, NgayLap, TongTien, MaKH, MaNV, TrangThai, Enable)
VALUES
('HD001', '2024-01-01', 500000, 'KH001', 'NV001', N'Đã thanh toán', 1),
('HD002', '2024-01-02', 300000, 'KH002', 'NV002', N'Đã thanh toán', 1),
('HD003', '2024-01-03', 450000, 'KH003', 'NV003', N'Chưa thanh toán', 1),
('HD004', '2024-01-04', 250000, 'KH004', 'NV004', N'Đã thanh toán', 1),
('HD005', '2024-01-05', 700000, 'KH005', 'NV005', N'Đã thanh toán', 1),
('HD006', '2024-01-06', 800000, 'KH006', 'NV006', N'Chưa thanh toán', 1),
('HD007', '2024-01-07', 200000, 'KH007', 'NV007', N'Đã thanh toán', 1),
('HD008', '2024-01-08', 150000, 'KH008', 'NV008', N'Đã thanh toán', 1),
('HD009', '2024-01-09', 650000, 'KH009', 'NV009', N'Chưa thanh toán', 1),
('HD010', '2024-01-10', 300000, 'KH010', 'NV010', N'Đã thanh toán', 1);
INSERT INTO ChiTietHoaDon (MaHD, MaSP, SL, GiaBan, GhiChu, Enable)
VALUES
('HD001', 'SP001', 2, 200000, N'Áo thun', 1),
('HD002', 'SP002', 1, 500000, N'Áo khoác', 1),
('HD001', 'SP003', 3, 300000, N'Quần jean xanh', 1),
('HD001', 'SP004', 1, 700000, N'Giày sneaker', 1),
('HD005', 'SP005', 2, 250000, N'Túi xách', 1),
('HD006', 'SP006', 5, 150000, N'Nón lưỡi trai', 1),
('HD007', 'SP007', 1, 900000, N'Váy dạ hội', 1),
('HD008', 'SP008', 3, 120000, N'Thắt lưng', 1),
('HD009', 'SP009', 2, 350000, N'Áo sơ mi', 1),
('HD010', 'SP010', 1, 450000, N'Giày cao gót', 1);
INSERT INTO PhieuNhapHang (MaPhieuNhap, NgayNhap, NhaCungCap, MaNhanVien, Enable)
VALUES
('PN001', '2024-01-01', 'NCC01', 'NV001', 1),
('PN002', '2024-01-02', 'NCC02', 'NV002', 1),
('PN003', '2024-01-03', 'NCC03', 'NV003', 1),
('PN004', '2024-01-04', 'NCC04', 'NV004', 1),
('PN005', '2024-01-05', 'NCC05', 'NV005', 1),
('PN006', '2024-01-06', 'NCC01', 'NV006', 1),
('PN007', '2024-01-07', 'NCC02', 'NV007', 1),
('PN008', '2024-01-08', 'NCC03', 'NV008', 1),
('PN009', '2024-01-09', 'NCC04', 'NV009', 1),
('PN010', '2024-01-10', 'NCC05', 'NV010', 1);
INSERT INTO ChiTietPhieuNhap (MaPhieuNhap, MaSP, SL, GiaNhap, GhiChu, Enable)
VALUES
('PN001', 'SP001', 10, 180000, N'Nhập áo thun', 1),
('PN002', 'SP002', 5, 450000 , N'Nhập áo khoác', 1),
('PN003', 'SP003', 8, 270000 , N'Nhập quần jean', 1),
('PN004', 'SP004', 2, 650000 , N'Nhập giày sneaker', 1),
('PN005', 'SP005', 7, 220000 , N'Nhập túi xách', 1),
('PN006', 'SP006', 15, 120000, N'Nhập nón lưỡi trai', 1),
('PN007', 'SP007', 3, 850000 , N'Nhập váy dạ hội', 1),
('PN008', 'SP008', 10, 100000, N'Nhập thắt lưng', 1),
('PN009', 'SP009', 4, 320000 , N'Nhập áo sơ mi', 1),
('PN010', 'SP010', 5, 420000 , N'Nhập giày cao gót', 1);

select *
from SanPham
