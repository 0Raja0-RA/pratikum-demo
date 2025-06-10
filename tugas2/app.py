from flask import Flask, render_template
import pandas as pd

# Inisialisasi aplikasi Flask
app = Flask(__name__)

# Membaca data dari file CSV
try:
    df = pd.read_csv('data_penjualan.csv')
    # Melakukan perhitungan sederhana untuk analisa
    df['Total Pendapatan'] = df['Unit Terjual'] * df['Harga Satuan']
    DATA_ERROR = None
except FileNotFoundError:
    df = pd.DataFrame() # Buat dataframe kosong jika file tidak ada
    DATA_ERROR = "Error: File 'data_penjualan.csv' tidak ditemukan. Pastikan file ada di dalam image Docker."

@app.route('/')
def index():
    if DATA_ERROR:
        return render_template('index.html', error=DATA_ERROR)

    # Konversi DataFrame ke tabel HTML
    table_html = df.to_html(classes='table table-bordered table-striped', index=False, border=0)
    # Hitung total pendapatan
    total_revenue = df['Total Pendapatan'].sum()
    # Format angka agar mudah dibaca
    formatted_revenue = f"{total_revenue:,.0f}".replace(',', '.')
    
    # Render template dari file 'templates/index.html' dan kirimkan variabel ke dalamnya
    return render_template('index.html', table=table_html, total_revenue=formatted_revenue)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)