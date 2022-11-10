# Tugas 7: Elemen Dasar Flutter
---

Nama  : Vinsen Wijaya  
NPM   : 2106637776  
Kelas : E  

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
3. Membuat Text baru yang akan menampilkan ganjil ketika _counter bernilai ganjil
4. Cari cara untuk membuat 2 floating action button di internet
5. Copy solusi dari internet dan modifikasi agar button min hanya muncul jika _counter >0
6. Testing codingan di browser Edge
