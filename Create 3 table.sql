-- Create Table
-- Create 3 new table with the following columns
-- Make sure the data type match with dataset in csv file
create table penjualan (id_distributor varchar,
						   id_cabang varchar,
						   id_invoice varchar,
						   tanggal date,
						   id_customer varchar,
						   id_barang varchar,
						   jumlah_barang int,
						   unit varchar,
						   harga numeric,
						   mata_uang varchar,
						   brand_id varchar,
						   lini varchar);
						 
create table pelanggan (id_customer varchar,
						   level varchar,
						   nama varchar,
						   id_cabang_sales varchar,
						   cabang_sales varchar,
						   id_group varchar,
						   grup varchar);
						   
create table barang (kode_barang varchar,
					    sektor varchar,
					    nama_barang varchar,
					    tipe varchar,
					    nama_tipe varchar,
					    kode_lini int,
					    lini varchar,
					    kemasan varchar);


-- Import csv data to the database
-- Make sure dataset path (in local storage) must be complete until the file_name.csv
copy penjualan (id_distributor,
				id_cabang,
				id_invoice,
				tanggal,
				id_customer,
				id_barang,
				jumlah_barang,
				unit,
				harga,
				mata_uang,
				brand_id,
				lini)
from 'D:\MAGANG\Kimia Farma - Data Analytics\penjualan.csv'
delimiter ','
CSV header;

copy pelanggan (id_customer,
				level,
				nama,
				id_cabang_sales,
				cabang_sales,
				id_group,
				grup)
from 'D:\MAGANG\Kimia Farma - Data Analytics\pelanggan.csv'
delimiter ','
CSV header;

copy barang (kode_barang,
			 sektor,
			 nama_barang,
			 tipe,
			 nama_tipe,
			 kode_lini,
			 lini,
			 kemasan)
from 'D:\MAGANG\Kimia Farma - Data Analytics\barang.csv'
delimiter ','
CSV header;