-- tao co so du lieu 

CREATE DATABASE IF NOT EXISTS DoAnNhom10;
USE DoAnNhom10;

-- tao bang 
CREATE TABLE Member (
    id int(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    FisrtName nvarchar(30) NULL, 
    LastName nvarchar(30)  NULL, 
    UserName nvarchar(30) NOT NULL, 
    Email varchar(50) NOT NULL, 
    Password varchar(30) NOT NULL, 
    Phone varchar(13) NULL,  
    Description text(200) NULL, 
    CreatedDate datetime NULL, 
    UpdateTime datetime  NULL
) ENGINE = InnoDB;

CREATE TABLE Content (
   id int(10) UNSIGNED AUTO_INCREMENT NOT NULL, 
   Title text(200) NULL, 
   Brief text(150) NULL, 
   Content text(1000) NULL, 
   CreatedDate datetime  NULL, 
   UpdateTime datetime NULL, 
   Sort int NULL, 
   AuthorId int(10) UNSIGNED NOT NULL,
   PRIMARY KEY(id,AuthorId ),
   FOREIGN KEY (AuthorId) REFERENCES Member(id)
) ENGINE = InnoDB;

-- them du lieu cho bang Member

INSERT INTO Member(FisrtName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Tam','Nguyen Van','Van Tam','nguyentam123@gmail.com','123456789','0256895684','Tai khoan dau tien','2021-09-20 13:25:12','2021-09-20 23:15:12' );
INSERT INTO Member(FisrtName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Thang','Tran Quyet','Quyet Thang','quyetthang321@gmail.com','132456789','0256485692','Tai khoan thu hai','2021-10-20 14:21:10','2021-10-20 22:11:22' );
INSERT INTO Member(FisrtName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Hong','Bui Thi','Thi Hong','buihong456@gmail.com','142356789','0325698745','Tai khoan thu ba','2021-10-12 13:25:12','2021-10-12 23:15:12' );
INSERT INTO Member(FisrtName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Thien','Hoang Van','Van Thien','hoangthien789@gmail.com','152346789','0315262451','Tai khoan thu tu','2021-11-20 13:25:12','2021-11-20 23:15:12' );
INSERT INTO Member(FisrtName,LastName,UserName,Email,Password,Phone,Description,CreatedDate,UpdateTime) VALUES('Linh','Vo Thi Ngoc','Ngoc Linh','volinh987@gmail.com','162345789','0387545654','Tai khoan thu nam','2021-12-20 13:25:12','2021-12-20 23:15:12' );

-- them du lieu cho bang Content
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Louis Vuitton ??? Archligh','M???t ????i Chunky ?????u ti??n trong BXH.','Xu???t hi???n trong Tu???n l??? th???i trang 2018, Archlight c???a Louis Vuitton l?? ????i sneaker ???? th???c s??? g??y ???????c ch?? ?? m???nh m???.
Ph???n ????? ???????c thi???t k??? oversize nh?? l??n mang ?????n s??? ??m ??i v?? d???o dai khi s??? d???ng. Nh??? v??o s??? v?????t tr???i h??n h???n v??? thi???t k??? m?? Archlight ???? d???n ?????u d??ng luxury sneaker.','2021-09-20 13:25:12','2021-09-20 23:15:12',1,1);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Balenciaga Triple S','Tuy s??? h???u th??n h??nh c???c m???ch v?? qu?? kh??? nh??ng Balenciaga Triple S l?? m???t trong nh???ng ????i gi??y th??? thao ??ang hot hi???n nay.','Tuy s??? h???u th??n h??nh c???c m???ch v?? qu?? kh??? nh??ng Balenciaga Triple S l?? m???t trong nh???ng ????i gi??y th??? thao ??ang hot hi???n nay.
Ngo??i l???p da cao c???p, upper c???a n?? c??n ???????c k???t h???p nh???ng l???p v???i d???t c?? nhi???u gam m??u kh??c nhau l??m ????i gi??y th??m n???i b???t h??n.
????y l?? ????i chunky sneaker ???????c y??u th??ch b???i ????ng ?????o t??n ????? th???i trang v?? ng?????i n???i ti???ng.','2021-10-20 14:21:10','2021-10-20 22:11:22',2,2);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Alexander McQueen Oversized','Tho???t nh??n c?? v??? h??i gi???ng ????i sneaker huy???n tho???i Stan Smith c???a Adidas','Tho???t nh??n c?? v??? h??i gi???ng ????i sneaker huy???n tho???i Stan Smith c???a Adidas nh??ng Alexander McQueen Oversized l???i n???i tr???i h??n nh??? ph???n ????? ?????n ?????c bi???t.
H??n n???a, s??? ??a d???ng v??? c??c phi??n b???n ph???i m??u ng??y m???t ???ch???t??? l?? ??i???m m???u ch???t gi??p ????i gi??y chi???m tr???n s??? tr??i tim c???a nh???ng t??n ????? gi??y.','2021-10-12 13:25:12','2021-10-12 23:15:12',3,3);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Sneaker th??u Gucci Ace Embroidered','Phi??n b???n th??u kh??ng bao gi??? l?? l???i th???i','Phi??n b???n th??u kh??ng bao gi??? l?? l???i th???i v?? lu??n l?? m???t trong nh???ng ????i gi??y th??? thao n??? ?????p nh???t???????c s??n ????n r??o ri???t.
Si??u ph???m Gucci Ace Embroidered ra ?????i n??m 2017 th???c s??? ???? ????nh d???u l???i v??? tr?? c???a Gucci tr??n th??? tr?????ng.','2021-11-20 13:25:12','2021-11-20 23:15:12',4,4);
INSERT INTO Content(Title,Brief,Content,CreatedDate,UpdateTime,Sort,AuthorId) VALUES('Rhyton Gucci logo leather sneaker','c??i t??n ???? c?? nh???ng ????ng g??p kh??ng nh??? trong vi???c l??m n??n danh ti???ng c???a Gucci.','Rhyton Gucci logo leather l?? c??i t??n ???? c?? nh???ng ????ng g??p kh??ng nh??? trong vi???c l??m n??n danh ti???ng c???a Gucci.
Phi??n b???n n??y mang ?????m phong c??ch streetwear, ph???n logo ???????c in m???t c??ch r?? r??ng, t??? m??? ngay ??? ph???n m?? ngo??i t???o s??? sang tr???ng.
Ph???n l??t c???c k??? d??y d???n, x???ng ????ng l?? m???t trong nh???ng m???ugi??y th??? thao n??? hot nh???t hi???n nay.','2021-12-20 13:25:12','2021-12-20 23:15:12',5,5);


