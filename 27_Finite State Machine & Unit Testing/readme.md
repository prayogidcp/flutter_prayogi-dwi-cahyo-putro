# (27) Finite State Machine & Unit Testing

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **Finate State Machine**
- Mesin yang memiliki sejumlah state
- Tiap state menunjukkan apa yang terjadi sebelumnya

Contoh : 
<br>Terdapat 3 state yang menunjukan kejadian dalam suatu proses : 
- IDDLE saat tidak terjadi proses
- RUNNING saat proses sedang berjalan
- ERROR saat proses gagal diseelsaikan

Contoh Sukses : 
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING kembali menjadi IDDLE saat proses selesai

Contoh Gagal : 
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING menjadi ERROR saat terjadi kegagalan
- ERROR kembali menjadi IDDLE

### **Implementasi pada View-Model**
- Menambahkan Enum :
<br>Membuat enum untuk masing-masing state : 
    - none saat terjadi IDDLE
    - loading saat terjadi RUNNING
    - error saat terjadi ERRROR
<br>
- Menambahkan Getter-Setter
<br>Membuat getter-setter untuk menyimpan state dari widget
- Menggunakan State
<br>Tiap proses yang perlu state tersebut, dapat memanfaatkannya

### **Implementasi pada Widget**
Perbedaan Tampilan Tiap State
<br>Informasi finite state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan :
- Saat state menunjukan RUNNING, maka ditampilkan progress indicator
- Saat state menunjukan IDDLE setelah RUNNING, maka ditampilkan data yang didapatkan.
- Saat state menunjukan ERROR, maka ditampilkan pesan yang menunjukan bahwa proses tidak dapat diselesaikan

### **Unit Test**
- Unit Test adalah salah satu jenis pengujian pada perangkat lunak
- Pengujian dilakukan pada unit dalam perangakt lunak
- Unit yang dimaksud umumnya adalah fungsi atau method

Tujuan Unit Test :
- Memastikan fungsi dapat mengolah berbagai jenis input
- Memastikan hasil dari suatu fungsi atau method sudah sesuai
- Menjadi dokumentasi

Cara Melakukan Unit Test :
- Secara manual, unit dijalankan dan dicek hasilnya secara manual
- Secara automated, menulis script yang dapat dijalankan berkali-kali menggunakan test runner

### **Mocking**
- Mocking merupakan proses yang terikat dengan sistem eksternal dapat mempengaruhi berjalannya pengujian
- Pengaruh tersebut dapat mengganggu proses pengujian
- Mocking dilakukan untuk menghindari masalah-masalah tersebut

Cara Kerja Mocking :
- Suatu object dibuat bentuk tiruannya
- Bentuan tiruan tersebut memiliki input dan output yang sama dengan yang asli
- Bentuk tiruan menghilangkan ketergantungan pada sistem eksternal


