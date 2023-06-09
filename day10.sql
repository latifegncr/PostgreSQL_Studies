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
insert into ogrenciler values(127 , ' Emre Gül ', ' Hatay ', 90);
insert into ogrenciler values(125, '   Efe Can   ', '  Adıyaman  ', 90);

select * from ogrenciler;
select * from ogretmenler;

-- 'into table adı' ile öğrencilerden adres sütununda ki bilgileri
-- 'deneme' isimli tabloya aktardık
select adres into deneme from ogrenciler;

------------------- CASE STATEMENT  ------------------------

--Soru-1 Öğrenciler tablosundan isim,adres ve sinav_notu nu alın ve
--Eğer sinav_notu 85'in üstündeyse 'Basarili'
--Eğer sinav_notu 75'ten küçükse 'İyi'
--Diğerlerine ise sinav_notu  'Başarısız' olarak
--öğrencinin karşısına yazdırınız.

select isim,adres,sinav_notu, 
case
	when sinav_notu>85 then 'Basarili'
	when sinav_notu<70 then 'Basarisiz'
	else 'iyi'
end
from ogrenciler 
where sinav_notu is not null
order by sinav_notu desc;

--Soru-2 Öğrenciler tablosundan isim,adres ve sinav_notu nu alın ve
--Eğer sinav_notu 85 ve üstüyse sinav_notu'nu 5 puan
--Eğer sinav_notu 85'ten küçükse sinav_notu'nu 15 puan
--Eğer sinav_notu 70'ten küçükse 'Başarısız' olarak
--öğrencinin karşısına yazdırınız.
--Note; sinav_notu null olmasın ve sinav_notu'a göre büyükten küçüğe sıralayın


select isim,adres,sinav_notu,
case
	when sinav_notu>=85 then sinav_notu+5
	when sinav_notu<85 then sinav_notu+15
	when sinav_notu<70 then sinav_notu+20
end
from ogrenciler where sinav_notu is not null
order by sinav_notu desc;


-----------------Trim komutu--------------------------
/*
      ltrim ve rtrim komutları
*/
select isim, adres, ltrim(isim) as trimIsim from ogrenciler;


--------- Replace Komutu -----------
select isim,  replace(isim, 'Emre', 'Mahmut') as replace from ogrenciler;
























