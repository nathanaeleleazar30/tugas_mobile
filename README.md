# Tugas 5 Mobile Dev - Navigasi dan State Flutter

Aplikasi ini mendemonstrasikan implementasi `StatelessWidget` dan `StatefulWidget`, tata letak dasar (Column, ListView, Container), serta manajemen *routing* menggunakan Stack Navigation (`Navigator.push` dan `Navigator.pop`).

## Cara Setup Project
1. Pastikan Flutter SDK telah terinstal di sistem Anda.
2. Clone repositori ini melalui terminal:
   `git clone <link-repository-anda>`
3. Masuk ke direktori proyek dan unduh dependensi:
   `flutter pub get`
4. Jalankan aplikasi di emulator atau perangkat fisik:
   `flutter run`

## Menjalankan Server Lokal & Import Database MySQL
*(Catatan: Instruksi ini disediakan untuk memenuhi requirement dokumen teknis terkait backend/database, jika integrasi API lokal ingin ditambahkan pada pengembangan selanjutnya).*

1. Buka **Laragon** dan jalankan service **Apache** serta **MySQL**.
2. Akses antarmuka database lokal Anda (misalnya melalui HeidiSQL yang terintegrasi di Laragon, atau phpMyAdmin).
3. Buat database baru (contoh: `db_katalog_mobile`).
4. Import file konfigurasi `.sql` yang tersedia ke dalam database tersebut.
5. Jalankan server *backend* (Node.js/Laravel) untuk mengekspos endpoint API jika aplikasi ini dihubungkan ke server sungguhan.