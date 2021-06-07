-- dapatkan data untuk 5 produk dengan penjualan tertinggi 
SELECT items.id, items.name, SUM(price) AS "total penjualan"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.id
ORDER BY SUM(price) DESC
LIMIT 5;