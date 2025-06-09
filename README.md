## Soal 1: Monitoring SSH

Script: `3324600045_monssh.sh`
Deskripsi: Mengecek setiap 10 detik apakah service SSH aktif. Jika tidak, menampilkan pesan dan broadcast ke user login.

### Cara Uji:
1. Ubah izin script: `chmod +x tugas1/3324600045_monssh.sh`
2. Jalankan script: `sudo bash 3324600045_monssh.sh`
3. Stop socket dan service SSH di terminal lain: 
   `sudo systemctl stop ssh.socket ssh.service`
4. Lihat output aktif dan peringatan di terminal awal
5. Start kembali service: `sudo systemctl start ssh`

## Soal 2: Backup Otomatis

Script: `3324600045_backup.sh`
Deskripsi: Menyalin seluruh isi direktori `/home/Documents` ke folder backup `/home/broking/backup`. Proses ini dijadwalkan otomatis dengan `cron`.

### Cara Uji:
1. Pastikan script memiliki izin eksekusi: `chmod +x tugas1/3324600045_backup.sh`
2. Jalankan manual untuk uji: `bash tugas1/3324600045_backup.sh`
3. Cek hasil backup di `/home/broking/backup/`
4. Tambahkan ke crontab: `crontab -e`
   Tambahkan baris: `0 1 * * * /home/broking/tugas1/3324600045_backup.sh >> /home/broking/backup/backup_log.txt 2>&1`
5. Verifikasi cron aktif: `crontab -l`

## Soal 3: Analisis Data Suhu & Kelembapan

Script: `3324600045_suhukelembapan.sh`
Deskripsi: Membaca file `data.txt` dan menampilkan:
- Suhu maksimum dari kolom `suhu`
- Rata-rata kelembapan dari kolom `kelembapan`

### Cara Uji:
1. Pastikan file `tugas1/data.txt` tersedia dan berisi data dengan header (timestamp, suhu, kelembapan, cahaya).
2. Ubah izin file script: `chmod +x tugas1/3324600045_suhukelembapan.sh`
3. Jalankan script: `bash tugas1/3324600045_suhukelembapan.sh`
4. Lihat hasil perhitungan suhu maksimum dan rata-rata kelembapan di terminal.

## Soal 4: Filter

Script: `3324600045_cek_user.sh`
Deskripsi: Menampilkan informasi dari file `/etc/passwd` berupa:
- Semua isi file `/etc/passwd`
- User yang memiliki direktori home `/home` dan menggunakan shell `/bin/bash`
- Username dari user dengan home directory dan shell `/bin/bash` saja

### Cara Uji:
1. Pastikan script memiliki izin eksekusi: `chmod +x tugas1/3324600045_usercheck.sh`
2. Jalankan script: `bash tugas1/3324600045_usercheck.sh`
3. Cek apakah output yang dihasilkan sesuai
