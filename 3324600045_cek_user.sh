#!/bin/bash

# Menampilkan semua isi file /etc/passwd
echo "=== Semua isi /etc/passwd ==="
cat /etc/passwd
echo ""

# Menampilkan user yang memiliki direktori home
echo "=== User dengan direktori /home ==="
grep '/home' /etc/passwd
echo ""

# Menampilkan user di /home yang menggunakan /bin/bash
echo "=== User di /home yang menggunakan /bin/bash ==="
grep '/home' /etc/passwd | grep '/bin/bash'
echo ""

# Menampilkan username saja dari user yang pakai /bin/bash di /home
echo "=== Username dari user yang pakai /bin/bash ==="
grep '/home' /etc/passwd | grep '/bin/bash' | cut -d: -f1
