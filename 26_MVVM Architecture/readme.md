# (26) MVVM Architecture

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **MVVM Architecture (ModelVie-View ViewModel)**
memisahkan logic dengan tampilan (View) kedalam ViewModel

Keuntungan :
- Reusability
<br>Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama.
- Maintability
<br>Mudah dirawat, karena pekerjaan terkait tampilan tidak bertumpuk bersama logic
- Testability
<br>Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic, sehingga dapat meningkatkan produktivitas pada pengujian

### **Melakukan MVVM**
Struktur Direktori
- Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber data tersebut.
- Tiap screen diletakan dalam sebuah direktori yang di dalammnya terdapat View dan ViewModel

Model
- Bentuk data yang akan digunakan, dibuah dalam bentuk class
- Data-data yang dimuat, diletakan pada property

ViewModel
- Menyimpan data-data dan logic yang diperlukan halaman ContactScreen
- Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga

Mendaftarkan ViewModel
- Menggunakan **MultiProvider** agar dapat banyak ViewModel
- **MaterialApp** sebagai child utama

View
<br>Menggunakan StatefullWidget

Menampilkan Data di View
- Letakan pada bagian build
- Menggunakan getters yang ada pada ViewModel
- Data dapat langsung ditampilkan pada widgets
