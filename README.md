# Tugas 1 - Implementasi Antrean (Queue) Menggunakan Bahasa Pemrograman Dart

**Nama:** Nafisah Sekar Ayu  
**NIM:** H1D024087  
**Shift Awal:** H
**Shift Akhir:** D

## 📌 Deskripsi Tugas
Tugas ini merupakan implementasi struktur data **Antrean (Queue)** menggunakan bahasa pemrograman Dart. Antrean adalah struktur data yang menerapkan prinsip **FIFO (First-In, First-Out)**, yang artinya data yang pertama kali dimasukkan akan menjadi data yang pertama kali dikeluarkan. 

Kode ini dibuat menggunakan platform [DartPad](https://dartpad.dev/) dan menggunakan *library* bawaan Dart, yaitu `dart:collection`, untuk mendapatkan performa yang lebih optimal.

## 💻 Penjelasan Kode
Kode program terdiri dari dua bagian utama, yaitu `class Antrean` dan fungsi `main`:

1. **Class `Antrean<T>`**
   - Merupakan *class generic* yang berarti bisa menampung tipe data apa pun (pada contoh ini menggunakan `<String>`).
   - Memiliki properti `_items` yang bertipe `Queue<T>` untuk menyimpan data.
   - **`enqueue(T item)`**: Berfungsi untuk menambahkan data baru ke bagian belakang antrean menggunakan perintah `addLast()`.
   - **`pop()`**: Berfungsi untuk mengambil dan menghapus data dari bagian paling depan antrean menggunakan perintah `removeFirst()`. Terdapat pengecekan `if (_items.isEmpty)` untuk melempar *error* jika antrean kosong.
   - **`peek()`**: Berfungsi untuk melihat data paling depan tanpa menghapusnya.
   - **`toString()`**: Berfungsi untuk mengubah isi antrean menjadi teks agar mudah dicetak ke layar.

2. **Fungsi `main()`**
   - Membuat objek `antreanBuku` dari *class* `Antrean`.
   - Memasukkan tiga data buku menggunakan `enqueue()`.
   - Mencetak isi antrean, melihat data terdepan, lalu mengeluarkan dua data menggunakan `pop()`.
   - Terdapat blok `try-catch` di akhir program untuk membuktikan bahwa sistem akan menangkap *error* (eksepsi) dengan baik saat kita mencoba mengambil data dari antrean yang sudah kosong.

## 🧠 Konsep yang Digunakan
Berdasarkan modul yang dipelajari, implementasi kode ini menerapkan beberapa konsep penting dalam Dart:

| Konsep | Penerapan pada Kode |
| :--- | :--- |
| **Kelas dan Objek** | Pembuatan *blueprint* `class Antrean` dan instansiasi objek `final antreanBuku = Antrean<String>()`. |
| **Fungsi / Metode** | Penggunaan method `enqueue()`, `pop()`, dan `peek()` untuk memanipulasi data di dalam kelas. |
| **Import** | `import 'dart:collection';` untuk mengambil class `Queue` bawaan Dart. |
| **Generic** | Penggunaan `<T>` pada class dan `<String>` pada saat pembuatan objek agar tipe data lebih aman (*type-safe*). |
| **Struktur Kontrol** | Penggunaan `if (_items.isEmpty)` untuk pengambilan keputusan sebelum mengeksekusi `pop()` atau `peek()`. |
| **Eksepsi (Exception)** | Penggunaan `throw Exception(...)` saat antrean kosong, dan penanganannya menggunakan blok `try-catch` di fungsi `main`. |

## 🚀 Cara Menjalankan
Kode ini dapat dijalankan secara langsung tanpa perlu instalasi *compiler*:
1. Buka situs [DartPad](https://dartpad.dev/).
2. Salin seluruh kode dari file `main.dart` ke dalam editor.
3. Klik tombol **Run** untuk melihat hasilnya di panel Console.
