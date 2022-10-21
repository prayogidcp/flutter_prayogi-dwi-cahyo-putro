# (28) UI Testing

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **Pengertian UI Testing**

UI Testing merupakan pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna.

### **UI Testing pada Flutter**
UI Testing pada Flutter disebut juga widget testing sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis

Keuntungan UI Testing : 
- Memastikan seluruh widget memberi tampilan yang sesuai
- Memastikan seluruh interaksi dapat diterima dengan baik
- Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget

Melakukan UI Testing :
- Installasi Package Testing
- Penulisan Script Testing
    - Dilakukan pada folder **test**
    - Nama file harus diikuti dengan **_test.dart** 
    - Tiap file berisi fungsi **main()** yang di dalamnya dapat dituliskan script testing
    - Tiap skenario pengujian disebut **test case**
- Script Testing
    1. Test case diawali dengan **testWidgets** dan diberikan judul
    2. Simulasi proses mengaktifkan halaman AboutScreen
    3. Memeriksa apakah di halaman tersebut terdapat teks "AboutScreen"
- Menjalankan Testing : 
    - Perintah **flutter test** akan menjalankan seluruh file test yang dibuat
    - Hasil dari perintah ini adalah lamanya waktu pengujian, total waktu pengujian yang dilakukan, dan pesan bahwa pengujian berhasil
- Menjalankan Testing Gagal 
<br>Akan ditampilkan penyebab gagalnya pengujian