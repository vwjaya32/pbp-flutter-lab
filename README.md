# PBP FLUTTER
---

Nama  : Vinsen Wijaya  
NPM   : 2106637776  
Kelas : E

### Daftar Isi
- [Tugas 7](#tugas-7-elemen-dasar-flutter)<br>
- [Tugas 8](#tugas-8-flutter-form)<br>
- [Tugas 9](#tugas-9-integrasi-web-service-pada-flutter)<br>


---
# Tugas 7 Elemen Dasar Flutter

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.<br>
Stateless widget adalah widget yang tidak pernah berubah (propertinya final), sementara stateful widget dinyatakan oleh pengguna untuk widget yang akan berubah sewaktu aplikasi berjalan (contohnya ketika menerima input dari pengguna).

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
```
1. Text    : _widget_ yang menampilkan tulisan 
2. Padding : _widget_ yang menambahkan _padding_ di sekitar suatu atau sekumpulan _widget_  
3. Row     : _widget_ yang menampilkan elemen _children_ secara horizontal  
4. Center  : _widget_ yang membuat posisi _child_ di dalamnya berada di tengah  
5. Column  : _widget_ yang menampilkan elemen _children_ dalam _vertical array_  
6. Spacer  : _widget_ yang membuat ruang kosong yang dapat digunakan untuk mengatur jarak antar widget  
```

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() digunakan dalam flutter ketika suatu perubahan pada screen diinginkan. Caranya dengan memasukkan variabel ke dalam fungsi setState sehingga flutter tahu variabel mana yang akan merubah tampilan UI dalam frame berikutnya

### Jelaskan perbedaan antara const dengan final.
Final dapat dikatakan sebagi read-only variable yang diinisialisasi sewaktu Run Time.  Const diinisialisasi disaat compile time, itu berarti datetime.now tidak bisa dinyatakan dalam const karena datanya baru dinyatakan saat runtime

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat app baru
2. Membuat fungsi _decrement
3. Mengubah Text "You have pressed ..." menjadi "GENAP"
4. Membuat Text baru ber-_value_ "GANJIL"
5. Memberikan _logic_ `if-else` sehingga ketika _counter_ bernilai ganjil akan ditampilkan kata ganjil dan ketika genap ditampilkan kata genap
6. Cari cara untuk membuat 2 floating action button di internet
7. Copy solusi dari internet dan modifikasi agar _button min_ hanya muncul jika _counter >0
8. Testing codingan di browser Edge


---
# Tugas 8 Flutter Form

### Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.
Pada `Navigator.push`, route hanya ditambahkan ke navigator.
Sementara pada `Navigator.pushReplacement` route sebelumnya akan langsung dibuang setelah route baru selesai menjalankan animasi masuk.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
```
1. Text    : _widget_ yang menampilkan tulisan 
2. Padding : _widget_ yang menambahkan _padding_ di sekitar suatu atau sekumpulan _widget_  
3. Drawer  : _widget_ untuk menampilkan hamburger menu  
4. Column  : _widget_ yang menampilkan elemen _children_ dalam _vertical array_  
5. Card    : _widget_ untuk menampilkan data dalam bentuk card
```

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
```
1. onPressed : menjalankan _event_ ketika _button_ ditekan.
2. onTap     : menjalankan _event_ ketika _widget_ ditekan. 
3. onChanged : menjalankan _event_ ketika ada _input_ yang sedang diberikan.
4. onSaved   : menjalankan _event_ ketika form di _save_.
5. onEnd     : menjalankan _event_ setelah animasi selesai.
```
### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Widget Navigator menampilkan layar seakan sebagai sebuah tumpukan (stack). 
Untuk menavigasi sebuah halaman baru, kita dapat mengakses Navigator melalui BuildContext dan memanggil fungsi push() atau pop()

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan file Drawer untuk menavigasi menu counter, Tambah Budget, View Budget.
2. Menambahkan halaman form untuk TambahBudget dengan mengimplementasikan halaman form seperti tutorial 7
3. Membuat file budget.dart yang menampung class object untuk menyimpan data yang diinput di form
4. Mengimplementasikan cara untuk menampilkan data dalam database dalam file budget.dart
5. Tampilan menggunakan widget Container dan widget Card.


---
# Tugas 9 Integrasi Web Service pada Flutter

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?  
Bisa, tetapi hal tersebut tidak lebih baik dari membuat model sebelum melakukan pengambilan data json. Alasannya karena tidak ada model yang digunakan sebagai _template_ untuk menampung data-data yang diambil. Pengolahan data dalam kode menjadi kurang rapi dan terkadang sulit diikuti oleh pengembang. Oleh karena itu, dibutuhkan model yang akan menampung data dari json sehingga data yang masuk dapat tersimpan dengan rapi dan mudah untuk diakses ketika dibutuhkan.  
  
  
### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
```
1. Text            : widget yang menampilkan tulisan.   
2. Padding         : widget yang menambahkan _padding_ di sekitar suatu atau sekumpulan _widget_.    
3. Drawer          : widget untuk menampilkan hamburger menu.  
4. Column          : widget yang menampilkan elemen children dalam vertical array.  
5. Row             : widget yang menampilkan elemen children dalam horizontal array.  
6. Expanded        : widget yang digunakan untuk mengekspansi ukuran Row, Column, atau Flex agar mengisi ruang kosong pada page.  
7. SizedBox        : widget berbentuk kotak yang dapat diatur ukurannya.  
8. FutureBuilder   : widget yang membuat dirinya sendiri berdasarkan cuplikan interaksi terbaru dengan Future.  
9. ListView        : widget yang menampilkan menampilkan anak-anaknya(widget) satu demi satu dalam arah gulir.  
10. ElevatedButton : widget yang dapat digunakan untuk membuat button.
```
  

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
1. Data json dapat di-fetch dari alamat URI sebuah API endpoint. 
2. Mengambil data json dengan metode http.get
3. Data yang diambil di-_decode_ ke dalam json (UTF-8).  
3. Mengolah data json dari web service dengan memanfaatkan metode pada model yang telah dibuat untuk mengonversi json menjadi data dalam bentuk sebuah model.  
4. Data dari model ditampilkan pada Flutter dengan memanfaatkan widget yang tepat.    
  

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.  
1. Menambahkan `List Tile` baru pada `drawer.dart` untuk menu _mywatchlist_.  
2. Membuat model baru yang bersesuaian dengan model.py dari _mywatchlist_ di Heroku.  
3. Mengambil data dari link json Heroku Tugas PBP (Langkah-langkah berdasarkan tutorial).  
4. Fungsi untuk fetch di_refactor_ ke file baru.  
5. Membuat _file page_ baru untuk menampilkan data yang telah di-_fetch_.  
6. Mengonfigurasi penampilan aplikasi  
  
