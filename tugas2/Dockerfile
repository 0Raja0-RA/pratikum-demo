# Gunakan base image Python yang ringan, seperti pada slide 
FROM python:3.9-slim

# Tetapkan direktori kerja di dalam container
WORKDIR /app

# Salin file dependensi terlebih dahulu untuk optimasi cache layer
COPY requirements.txt .

# Install dependensi yang dibutuhkan
RUN pip install -r requirements.txt

# Salin seluruh kode aplikasi ke dalam direktori kerja di container
COPY . .

# Ekspos port 5000 yang digunakan oleh Flask
EXPOSE 5000

# Perintah untuk menjalankan aplikasi saat container dimulai 
CMD ["python", "app.py"]