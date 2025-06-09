#!/bin/bash

echo "Menghitung suhu maksimum: "
awk 'NR > 1 { if ($2 > max) max = $2 } END { print "Suhu maksimum: " max }' tugas1/data.txt

echo ""
echo "Menghitung rata-rata kelembapan: "
awk 'NR > 1 { total += $3; count++ } END { print "Rata-rata kelembapan: " total/count }' tugas1/data.txt
