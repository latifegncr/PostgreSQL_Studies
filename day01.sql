/*
bu sekilde
uzun yorumlarimizi yazabiliriz
*/
/*
  SQL KOMUTLARI GRUPLARA AYRILIR :
  1.(Data Definition Language - DDL) Veri Tanimlama Dili
  CREATE: Tablo oluşturur.
  ALTER: Tabloyu günceller.
  DROP: Tabloyu siler.
  
  2.(Data Manipulation Language - DML) Veri Kullanma Dili
  INSERT:Tabloya veri ekler
  UPDATE:Tablodaki verileri günceller
  DELETE:Tablodaki verileri siler
  
  3.(Data Query Language - DQL) Veri Sorgulama Dili
  SELECT: Tablodaki verileri listeler.
  
*/
-- talebeler isminde tablo olusturalim.
create table talebeler(  
ogrenci_tc char(11), --Uzunlugu belli olan String veriler icin char() data turu kullanilir.
ogrenci_isim varchar(20), --Uzunlugu belli olmayan String veriler icin varchar() data turu kullanilir
not_ort real, --Ondalikli sayilar icin real data turu kullanilir
kayit_tarihi date -- Tarih icin date data turu kullanilir
);
-- talebeler tablosundaki verileri listeleyelim
select * from talebeler;  --* tüm sutunlardaki verileri listeler


--talebeler tablosuna veri ekleyelim

insert into talebeler values('12345678912','Esma',90.5,'2020-02-14');
insert into talebeler values('12345678998','Mustafa',90.6,'2021-05-16');
insert into talebeler values('12345678912','Yunus',86.5,'2022-02-25');


--Şimdi tekrardan talebeler tablosundaki verileri listeleyelim

select * from talebeler;


--Talebeler tablosunu silelim

drop table talebeler;


--Soru: Öğretmenler isminde tablo oluşturalım

create table ogretmenler(
	ogretmen_ismi varchar(15),
	bransi varchar(25),
	mezuniyet_derecesi varchar(20),
	tel_nu char(11),
	maas int
	
	);
	
	
	--Soru: Öğretmenler tablosunun içine veri girişi yapalım.
	
	insert into ogretmenler values('Esma','Matematik','Lisans','12345678998','30000');
    insert into ogretmenler values('Nalan','Edebiyat','Yüksek Lisans','12345678978','30000');
	insert into ogretmenler values('Ali','Tarih','Lisans','12345678912','32000');
	
	--Soru Öğretmenler tablosundki verileri listeleyelimmm
	
	select * from ogretmenler;
	
	
	--Soru: Öğretmenler tablosunu silelim
	
	drop table ogretmenler;
	
	
	
	/*=====================================SELECT=======================================================


select * from tablo_adi ==> * Tüm sutunlardaki verileri listeler



DQL Grubundan ==> SELECT komutu ile 'Tablodaki İstedigimiz Sütundaki Verileri Listeleyebiliriz'


Syntax:
-------


select sutun_adi from tablo_adi; ==> Sadece belirtilen sutundaki verileri listeler


========================================================================================================*/


create table ogrenciler
(
id int,
isim varchar(40),
adres varchar(100),
sinav_notu int
);

insert into ogrenciler values(120, 'Ali Can', 'Ankara', 75);
insert into ogrenciler values(121, 'Veli Mert', 'Trabzon', 85);
insert into ogrenciler values(122, 'Ayşe Tan', 'Bursa', 65);
insert into ogrenciler values(123, 'Derya Soylu', 'Istanbul', 95);
insert into ogrenciler values(124, 'Yavuz Bal', 'Ankara', 85);
insert into ogrenciler values(125, 'Emre Gül', 'Hatay', 90);
insert into ogrenciler values(126, 'Harun Reşit', 'Isparta', 100);


--SORU1: ogrenciler tablosunun tum sutunlarındaki verileri listeleyiniz

select * from ogrenciler;

--SORU2: ogrenciler tablosundaki 'isim' sutunundaki verileri listeleyiniz

select isim from ogrenciler;


--SORU3: ogrenciler tablosundaki  adres sutunundaki verileri listeleyiniz
select adres from ogrenciler;

--SORU3: ogrenciler tablosundaki sinav_notu sutunundaki verileri listeleyiniz
select sinav_notu from ogrenciler;

--SORU5: ogrenciler tablosundaki 'isim' ve 'sinav_notu' sutunundaki verileri listeleyiniz
select isim, sinav_notu from ogrenciler;

/*
where ==> Şart belitmemiz gerektiğinde kullanılır..
*/

--SORU6: ogrenciler tablosundaki sinav_notu 80'den büyük olan öğrencilerin tüm bilgilerini listele
select * from ogrenciler where sinav_notu>80;


--SORU7: ogrenciler tablosundaki adres'i 'Ankara' olan ögrencilerin tüm bilgilerini listele
select * from ogrenciler where adres = 'Ankara';


--SORU8: ogrenciler tablosundaki sinav_notu 85 ve adres'i 'Ankara' olan öğrenci isim'ini listele
select * from ogrenciler where sinav_notu= 85 and adres = 'Ankara';


--SORU9: ogrenciler tablosundaki sinav_notu 65 veya 85 olan ogrencilerin tüm bilgilerini listele
--1.Yol
select * from ogrenciler where sinav_notu= 85 or sinav_notu= 65;

--in ==> Birden fazla ifade ie tanımlayabileceiğimiz durumları 'in' komutu ile yazabiliriz.
--2.yol
select * from ogrenciler where sinav_notu in(65,85);
select * from ogrenciler where sinav_notu between 65 and 85;-- 65 ve 85 arası

























