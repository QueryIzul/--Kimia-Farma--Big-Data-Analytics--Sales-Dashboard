-- Create Aggregate Table
create table aggregate_table as(
select id_invoice,
	   tanggal,
	   id_customer,
	   id_cabang,
	   nama_cabang,
	   cabang_sales,
	   kode_barang,
	   nama_barang,
	   brand,
	   harga_per_unit,
	   jumlah_unit,
	   unit,
	   (harga_per_unit * jumlah_unit) as total_harga,
	   mata_uang
from base_table
group by 1,2,3,4,5,6,7,8,9,10,11,12,14);

-- Export Queries to CSV
COPY(SELECT *
	 FROM aggregate_table
	) TO 'D:\MAGANG\Kimia Farma - Data Analytics\aggregate_table.csv' DELIMITER ',' CSV HEADER;