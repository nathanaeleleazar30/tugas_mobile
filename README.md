# Tugas #4 Mobile Developer: Routing & Navigation

Proyek Flutter ini dibuat untuk memenuhi Tugas #4, yang mendemonstrasikan implementasi fitur navigasi antar layar (Stack Navigation) serta perbedaan penggunaan siklus hidup antara `StatelessWidget` dan `StatefulWidget`.

## ⚙️ Cara Setup Project
Panduan singkat untuk menjalankan proyek aplikasi Flutter ini di perangkat lokal:

1. Pastikan Flutter SDK telah terinstal dan terkonfigurasi dengan baik di perangkat Anda.
2. Lakukan *clone* pada *repository* ini menggunakan perintah berikut di terminal:
   ```bash
   git clone https://github.com/nathanaeleleazar30/tugas-4-mobile-dev.git
   ```
3. Buka direktori proyek yang baru saja diunduh.
4. Unduh seluruh dependensi proyek dengan menjalankan perintah:
   ```bash
   flutter pub get
   ```
5. Jalankan aplikasi pada emulator atau perangkat fisik yang terhubung menggunakan perintah:
   ```bash
   flutter run
   ```

## 🖥️ Menjalankan Server Lokal
Meskipun aplikasi saat ini menggunakan data statis, berikut adalah perintah untuk menjalankan server lokal jika proyek ini dihubungkan dengan *backend*:

1. Pastikan lingkungan *server* lokal (seperti Laragon) sudah aktif.
2. Jika menggunakan *framework* berbasis PHP (seperti Laravel), buka terminal pada direktori *backend* dan jalankan:
   ```bash
   php artisan serve
   ```
3. Jika menggunakan Node.js/Express, jalankan perintah:
   ```bash
   npm run start
   ```

## 🗄️ Cara Import Database MySQL
Langkah-langkah untuk melakukan impor database MySQL ke dalam server lokal:

1. Buka aplikasi *server* lokal Anda (misalnya Laragon) dan pastikan layanan **Apache** serta **MySQL** sudah berjalan (klik tombol Start All).
2. Buka *web browser* dan akses antarmuka phpMyAdmin (umumnya tersedia di URL `http://localhost/phpmyadmin`) atau buka melalui tombol Database di Laragon.
3. Pada panel sebelah kiri, klik **New** untuk membuat *database* baru, lalu beri nama (misalnya `db_katalog_app`) dan klik **Create**.
4. Setelah *database* berhasil dibuat, pastikan *database* tersebut sedang dipilih, lalu klik tab **Import** pada menu navigasi bagian atas.
5. Pada bagian *File to import*, klik tombol **Choose File** (atau **Browse**) dan pilih file berekstensi `.sql` yang berisi struktur *database* Anda.
6. Gulir ke bagian paling bawah halaman, lalu klik tombol **Import** atau **Go**.
7. Tunggu hingga muncul notifikasi hijau yang menandakan proses impor tabel dan data berhasil diselesaikan.
