Create table Cevirmenler( 
	CevirmenNo char(8) not null , 
	CevirmenAdi varchar2(25), 
	CevirmenSoyadi varchar2(25), 
	Dil varchar2(10), 
	primary key (CevirmenNO) 
	 
);

Create table yazarlar( 
	YazarNo char(8) not null, 
	YazarAdi VARCHAR2(25) NOT NULL, 
	YazarSoyadi VARCHAR2(20) NOT NULL, 
	Ulke VARCHAR2(20), 
	primary key (YazarNo) 
	 
	);

Create Table kullanicilar( 
	UyeNo char(8) not null,  
	UyeAdi VARCHAR2(20), 
	UyeSoyadi VARCHAR2(30), 
	UyeDT DATE, 
	primary key(UyeNo) 
 
	);

Create table odunc( 
	IslemID char(2)NOT NULL, 
	UyeID char(8) not null, 
	EserID char(13) not null, 
	Durum char(1), 
	Primary key (islemID), 
	FOREIGN key(UyeID) references kullanicilar(UyeNo) 
	);

create table Icerik( 
	IcerikNo char(2) not null, 
	Tur varchar2(20), 
	Konu varchar2(20), 
	Primary key(IcerikNo) 
	 
);

CREATE TABLE Eserler ( 
    SeriNo CHAR(13) NOT NULL, 
    EserAdi VARCHAR2(50) NOT NULL, 
    IcerikID char(2) not null, 
    CevirmenID char(8), 
	Dil VARCHAR2(10), 
    Yayinevi VARCHAR2(25), 
    YazarID char(8) not null, 
	YayinTarihi int, 
    StokDurumu int, 
	IslemID char(2), 
    PRIMARY KEY (SeriNo), 
	FOREIGN KEY (YazarID) REFERENCES Yazarlar(YazarNo), 
	FOREIGN KEY (CevirmenID) REFERENCES Cevirmenler(CevirmenNo), 
	FOREIGN KEY (IslemID) REFERENCES odunc(IslemID), 
	FOREIGN key (IcerikID) references Icerik(IcerikNo) 
 
	 
   );

insert into yazarlar values('10000003', 'Vedat', 'Türkali', 'Türkiye');

insert into yazarlar values('10000004', 'Devrim', 'Çamoğlu', 'Türkiye');

insert into yazarlar values('10000005', 'Zülfü', 'Livaneli', 'Türkiye');

insert into yazarlar values('10000006', 'Charles', 'Dickens', 'Birleşik Krallık');

insert into yazarlar values('10000007', 'James W. ,Susan A.', 'Nilsson , Riedel', 'ABD');

insert into yazarlar values('10000008', 'Raymond A. ,Robert J.', 'Serway, Beichner', 'ABD');

insert into yazarlar values('10000009', 'Uğur', 'Mumcu', 'Türkiye');

insert into yazarlar values('10000010', 'Çetin', 'Çetintaş', 'Türkiye');

insert into yazarlar values('10000011', 'Adolf', 'Hitler', 'Almanya');

insert into yazarlar values('10000012', 'Yılmaz', 'Özdil', 'Türkiye');

insert into yazarlar values('10000013', 'Abdulvahap Çağatay', 'Dikmen', 'Türkiye');

insert into yazarlar values('10000014', 'J.R.R.', 'Tolkien', 'Birleşik Krallık');

insert into yazarlar values('10000015', 'Aziz', 'Nesin', 'Türkiye');

insert into yazarlar values('10000016', 'Behzad', 'Razavi', 'İran');

insert into yazarlar values('10000018', 'Mary', 'Shelley', 'Birleşik Krallık');

insert into yazarlar values('10000019', 'Vladimir', 'Pistalo', 'Bosna-Hersek');

insert into yazarlar values('10000020', 'Franz', 'Kafka', 'Çekya');

insert into yazarlar values('10000021', 'Prof. Dr. İlber', 'Ortaylı', 'Türkiye');

insert into yazarlar values('10000022', 'Serkan', 'Karaismailoğlu', 'Türkiye');

insert into yazarlar values('10000023', 'J. K.', 'Rowlings', 'Birleşik Krallık');

insert into yazarlar values('10000024', 'George', 'Orwell', 'Birleşik Krallık');

insert into yazarlar values('10000029', 'Robert', 'Boylestad', 'ABD');

insert into yazarlar values('10000030', 'Fyodor Mihailoviç', 'Dostoyevski', 'Rusya');

insert into yazarlar values('10000031', 'Seymour,Marc', 'Lipschutz,Lipson', 'ABD');

insert into yazarlar values('10000002', 'Fahri', 'Vatansever', 'Türkiye');

insert into yazarlar values('10000001', 'Sait Faik', 'Abasıyanık', 'Türkiye');

insert into cevirmenler values ('20000000', 'Kemal',' ÇOLAKOĞLU', 'İngilizce');

insert into cevirmenler values ('20000001', 'Ergün',' Aydın',  'Almanca');

insert into cevirmenler values ('20000002', 'Bülent',' Somay',  'İngilizce');

insert into cevirmenler values ('20000003', 'Mehmet',' Siraç ÖZERDEM',  'İngilizce');

insert into cevirmenler values ('20000004', 'Süeda',' Kaya', 'İngilizce');

insert into cevirmenler values ('20000005', 'Osman ','Çakmakcı', 'Almanca');

insert into cevirmenler values ('20000006', 'Ülkü',' Tamer', 'İngilizce');

insert into cevirmenler values ('20000007', 'Celal ','Üster',  'İngilizce');

insert into cevirmenler values ('20000008', 'Ergin ','Altay',  'Rusça');

INSERT INTO kullanicilar (UyeNo, UyeAdi, UyeSoyadi, UyeDT ) 
VALUES ('23000001', 'Ayşe', 'Yılmaz', TO_DATE('09/23/2006', 'MM/DD/YYYY'));

INSERT INTO kullanicilar (UyeNo, UyeAdi, UyeSoyadi, UyeDT) 
VALUES ('23000002', 'Mehmet', 'Demir', TO_DATE('05/11/2004', 'MM/DD/YYYY'));

INSERT INTO kullanicilar (UyeNo, UyeAdi, UyeSoyadi, UyeDT ) 
VALUES ('23000003', 'Zeynep', 'Kaya', TO_DATE('12/02/1995', 'MM/DD/YYYY'));

INSERT INTO kullanicilar (UyeNo, UyeAdi, UyeSoyadi, UyeDT) 
VALUES ('23000004', 'Ahmet', 'Öztürk', TO_DATE('07/14/2005', 'MM/DD/YYYY'));

INSERT INTO kullanicilar (UyeNo, UyeAdi, UyeSoyadi, UyeDT) 
VALUES ('23000006', 'Ali', 'Aydın', TO_DATE('11/07/1992', 'MM/DD/YYYY'));

INSERT INTO kullanicilar (UyeNo, UyeAdi, UyeSoyadi, UyeDT) 
VALUES ('23000007', 'Fatma', 'Arslan', TO_DATE('05/18/2023', 'MM/DD/YYYY'));

INSERT INTO kullanicilar (UyeNo, UyeAdi, UyeSoyadi, UyeDT) 
VALUES ('23000008', 'Hasan', 'Çelik', TO_DATE('02/05/2023', 'MM/DD/YYYY'));

INSERT INTO kullanicilar (UyeNo, UyeAdi, UyeSoyadi, UyeDT) 
VALUES ('23000015', 'Mustafa', 'Özdemir', TO_DATE('01/21/1997', 'MM/DD/YYYY'));

INSERT INTO kullanicilar (UyeNo, UyeAdi, UyeSoyadi, UyeDT) 
VALUES ('23000324', 'Selin', 'Doğan', TO_DATE('11/28/2005', 'MM/DD/YYYY'));

INSERT INTO kullanicilar (UyeNo, UyeAdi, UyeSoyadi, UyeDT) 
VALUES ('19000154', 'İbrahim', 'Aksoy', TO_DATE('06/03/1994', 'MM/DD/YYYY'));

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('01', '23000001', '9786254055911', 'G');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('02', '23000002', '9789750259531', 'N');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('03', '23000003', '9789752892699', 'N');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('04', '23000004', '9786058666078', 'N');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('05', '23000006', '9786059681018', 'N');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('06', '23000007', '9781292060545', 'G');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('07', '23000008', '9789758624225', 'G');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('08', '23000015', '9786050900569', 'N');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('12', '23000324', '9786052012987', 'N');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('10', '19000154', '9789750516146', 'N');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('11', '23000004', '9786053140191', 'N');

INSERT INTO odunc (IslemID, UyeID, EserID, Durum) VALUES ('13', '23000324', '9789752430082', 'G');

INSERT INTO Icerik VALUES ('01', 'Öykü', 'Edebiyat');

INSERT INTO Icerik  VALUES ('02', 'Programlama', 'Bilim');

INSERT INTO Icerik  VALUES ('03', 'Roman', 'Edebiyat');

INSERT INTO Icerik  VALUES ('04', 'Elektronik', 'Bilim');

INSERT INTO Icerik  VALUES ('05', 'Roman', 'Edebiyat');

INSERT INTO Icerik  VALUES ('06', 'Elektrik', 'Bilim');

INSERT INTO Icerik  VALUES ('07', 'Fizik', 'Bilim');

INSERT INTO Icerik  VALUES ('08', 'Siyaset', 'Edebiyat');

INSERT INTO Icerik  VALUES ('09', 'Kişisel Gelişim', 'Eğitim');

INSERT INTO Icerik  VALUES ('10', 'Politika', 'Araştırma');

INSERT INTO Icerik  VALUES ('11', 'Deneme', 'Edebiyat');

INSERT INTO Icerik  VALUES ('12', 'Eğitim', 'Akademik');

INSERT INTO Icerik  VALUES ('13', 'Eleştiri', 'Edebiyat');

INSERT INTO Icerik  VALUES ('14', 'Düşünce', 'Felsefe');

INSERT INTO Icerik VALUES ('15', 'Tarih', 'Araştırma');

INSERT INTO Icerik VALUES ('16', 'Kişisel Gelişim', 'Bilim');

INSERT INTO Icerik VALUES ('17', 'Matematik', 'Bilim');

insert into eserler values ( '9789752430082', 'Cumhuriyetin İlk Yüzyılı (1923-2023)', '15', NULL, 'Türkçe', 'Kronik Kitap', '10000021', 2021, 12,'13');

insert into eserler values ( '9786052012987', 'Enerji Projeleri ve İklim Değişikliği', '12', null, 'Türkçe', 'Umuttepe', '10000013', 2019, 3,'12');

insert into eserler values ('9786059840392', 'Kavgam', '10', '20000001', 'Türkçe', 'En Kitap', '10000011', 2016,1,null );

insert into eserler values ('9789944888059', 'Aforizmalar', '14', '20000005', 'Türkçe', 'İş Bankası', '10000020', 2019, 10 ,null);

insert into eserler values ( '9786050900569', 'İsim Şehir Hayvan', '11', null, 'Türkçe', 'Doğan Kitap', '10000012', 2011, 4,null);

insert into eserler values ('9789759038786', 'Irak ve Mısır/Dünya Kazan Ben Kepçe 1', '13', null, 'Türkçe', 'Nesin Yayınevi', '10000015', 2006, 7,null);

insert into eserler values ('9780071543521', 'Schaums Outline of Linear Algebra', '17', null, 'İngilizce', 'McGraw Hill', '10000031', 2009, 4 ,null);

insert into eserler values ('9786055286781', 'Kadın Beyni Erkek Beyni', '16', null, 'Türkçe', 'Elma', '10000022', 2016, 7,null);

insert into eserler values ( '9786059681629', 'Die Verwandlung', '05', null, 'Almanca', 'Karbon Kitaplar', '10000020', 2016,9,null);

insert into eserler values ( '9786254055911', 'Seçme Hikayeler', '01', null, 'Türkçe', 'İş Bankası', '10000001', 2021, 3,'01');

insert into eserler values ( '9789750259531', 'Algoritma Geliştirme ve Programlamaya Giriş', '02', null, 'Türkçe', 'Seçkin Yayıncılık', '10000002', 2020, 4,'02');

insert into eserler values ( '9789752892699', 'Güven (cilt 1)', '03', null, 'Türkçe', 'Everest', '10000003', 2005, 2,'03');

insert into eserler values ('9786058666078', 'Hobi Elektronik','04',null,'Türkçe','Dikeyeksen', '10000004', 2013, 4,'04');

insert into eserler values ( '9786050914443', 'Kardeşimin Hikayesi', '05', null, 'Türkçe', 'Doğan Kitap', '10000005', 2013, 4,null);

insert into eserler values ('9786059681018', 'A Tale Of Two Cities', '05', null, 'İngilizce', 'Karbon Kitaplar', '10000006', 2016, 7,'05');

insert into eserler values ('9781292060545', 'Electric Circuits (11th edition)', '06', null, 'İngilizce', 'Pearson', '10000007', 2014, 2,'06');

insert into eserler values ( '9789758624225', '1. Cilt Fen ve Mühendislik İçin', '07', '20000000', 'Türkçe', 'Palme', '10000008', 2014, 4,'07');

insert into eserler values ('9786054274574', 'Sakıncalı Piyade', '08', null, 'Türkçe', 'Uğur Mumcu Vakfı', '10000009', 2020, 3,null);

insert into eserler values ( '9786254411960', 'Hayvanlardan Destek Almanın Gizemli Sanatı', '09', null, 'Türkçe', 'Destek Yayınları', '10000010', 2021, 1,null);

insert into eserler values ('9789753423472', 'Yüzüklerin Efendisi - Tek Cilt Özel Basım', '05', '20000002', 'Türkçe', 'Metis', '10000013', 2001, 4,null );

insert into eserler values ( '9786053558736', 'MİKROELEKTRONİĞİN TEMELLERİ', '04', '20000003', 'Türkçe', 'Palme', '10000016', 2017, 8,null);

insert into eserler values ('9786059533195', 'Frankenstein', '05', null, 'İngilizce', 'MK Pubilcations', '10000018', 2020, 6 ,null);

insert into eserler values ( '9786059691895', 'Tesla:Maskelerle Çevrili Bir Hayat', '05', '20000004', 'Türkçe', 'Zeplin', '10000019', 2020, 4,null);

insert into eserler values ('9789750802942', 'Harry Potter ve Felsefe Taşı', '05', '20000006', 'Türkçe', 'Yky', '10000023', 2001, 4,null);

insert into eserler values ( '9789750719387', 'Hayvan Çiftliği', '05', '20000007', 'Türkçe', 'Can', '10000024', 2019, 8,null);

insert into eserler values ( '9786053140177', 'Bir Gün Tek Başına', '05', null, 'Türkçe', 'Ayrıntı', '10000003', 2021,3,null);

insert into eserler values ( '9786053140191', 'Mavi Karanlık', '05', null, 'Türkçe', 'Ayrıntı', '10000003', 2021, 6,'11');

insert into eserler values ('9789759038496', 'Zübük', '05', null, 'Türkçe', 'Nesin Yayınevi', '10000015', 2005, 4,null);

insert into eserler values ('9789759038472', 'Yaşar Ne Yaşar Ne Yaşamaz', '05',null, 'Türkçe', 'Nesin Yayınevi', '10000015', 2008, 7,null);

insert into eserler values ('9781292025636', 'Electronic Devices and Circuit Theory', '04', null, 'İngilizce', 'Pearson', 10000029, 2013, 2,null );

insert into eserler values ( '9789750516146', 'Suç ve Ceza', '05', '20000008', 'Türkçe', 'İletişim', '10000030', 2019, 8,'10');

SELECT kullanicilar.UyeAdi, kullanicilar.UyeSoyadi, odunc.Durum 
FROM kullanicilar 
JOIN odunc ON kullanicilar.UyeNo = odunc.UyeID 
WHERE odunc.EserID = '9786059681018';

SELECT k.UyeAdi, k.UyeSoyadi, k.UyeDT, e.EserAdi 
FROM kullanicilar k 
JOIN odunc o ON k.UyeNo = o.UyeID 
JOIN Eserler e ON o.EserID = e.SeriNo 
WHERE k.UyeNo = '23000324';

SELECT y.YazarAdi, y.YazarSoyadi, y.Ulke, e.EserAdi 
FROM yazarlar y 
JOIN Eserler e ON y.YazarNo = e.YazarID 
WHERE y.YazarAdi = 'Aziz' AND y.YazarSoyadi='Nesin' ;

SELECT y.YazarNo, y.Ulke, e.EserAdi 
FROM yazarlar y 
JOIN Eserler e ON y.YazarNo = e.YazarID 
WHERE y.YazarAdi = 'Aziz' AND y.YazarSoyadi='Nesin' ;

SELECT Eserler.Dil, SUM(Eserler.StokDurumu) AS ToplamStokDurumu 
FROM Eserler 
GROUP BY Eserler.Dil;

SELECT kullanicilar.UyeAdi, kullanicilar.UyeSoyadi, COUNT(odunc.IslemID) AS AldigiEserSayisi 
FROM kullanicilar 
LEFT JOIN odunc ON kullanicilar.UyeNo = odunc.UyeID 
GROUP BY kullanicilar.UyeAdi, kullanicilar.UyeSoyadi;

CREATE VIEW OduncAyrıntılar AS 
SELECT odunc.IslemID, kullanicilar.UyeAdi, kullanicilar.UyeSoyadi, Eserler.EserAdi, Eserler.YazarID, Eserler.CevirmenID 
FROM odunc 
JOIN kullanicilar ON odunc.UyeID = kullanicilar.UyeNo 
JOIN Eserler ON odunc.EserID = Eserler.SeriNo;

select * from OduncAyrıntılar;

CREATE VIEW YazarOduncIstatistikleri AS 
SELECT yazarlar.YazarAdi, yazarlar.YazarSoyadi, COUNT(odunc.IslemID) AS OduncSayisi 
FROM yazarlar 
JOIN Eserler ON yazarlar.YazarNo = Eserler.YazarID 
JOIN odunc ON Eserler.SeriNo = odunc.EserID 
GROUP BY yazarlar.YazarAdi, yazarlar.YazarSoyadi;

select * from YazarOduncIstatistikleri;

CREATE VIEW KitapBilgileri AS 
SELECT 
    Eserler.SeriNo, 
    Eserler.EserAdi, 
    yazarlar.YazarAdi, 
    yazarlar.YazarSoyadi, 
    Cevirmenler.CevirmenAdi, 
    Cevirmenler.CevirmenSoyadi, 
    Eserler.Dil, 
    Eserler.Yayinevi, 
    Eserler.YayinTarihi, 
    Eserler.StokDurumu, 
    COUNT(odunc.IslemID) AS OduncSayisi 
FROM 
    Eserler 
    LEFT JOIN yazarlar ON Eserler.YazarID = yazarlar.YazarNo 
    LEFT JOIN Cevirmenler ON Eserler.CevirmenID = Cevirmenler.CevirmenNo 
    LEFT JOIN odunc ON Eserler.SeriNo = odunc.EserID 
GROUP BY 
    Eserler.SeriNo, 
    Eserler.EserAdi, 
    yazarlar.YazarAdi, 
    yazarlar.YazarSoyadi, 
    Cevirmenler.CevirmenAdi, 
    Cevirmenler.CevirmenSoyadi, 
    Eserler.Dil, 
    Eserler.Yayinevi, 
    Eserler.YayinTarihi, 
    Eserler.StokDurumu;

SELECT * FROM KitapBilgileri;

drop view "KITAPBILGILERI"


CREATE VIEW KitapStokDurumu AS 
SELECT Eserler.EserAdi, COUNT(odunc.IslemID) AS OduncSayisi, Eserler.StokDurumu - COUNT(odunc.IslemID) AS KalanStok 
FROM Eserler 
LEFT JOIN odunc ON Eserler.SeriNo = odunc.EserID 
GROUP BY Eserler.EserAdi, Eserler.StokDurumu;

select*from KitapStokDurumu ;

