# (07) Branching - Looping - Function
## Data diri 
### NO. URUT : 1_017FLC_30
### NAMA : PRAYOGI DWI CAHYO PUTRO
#
## Summary
### **Pengambilan keputusan**

<p style="text-align: justify">IF merupakan sebuah fungsi yang menginput sesuatu bernilai benar (true) sesuai dengan kondisi if tersebut maka fungsi dari if sendiri akan menampilkan blok dari kondisinya pada percabangan if/else if/else.</p>

#### IF
- memerlukan nilai bool (dari operator logical atau comparison)
- menjalankan bagian proses jika nilai bool bernilai true

#### IF-ELSE
- berjalan dengan if
- menambahkan alternatif jika nilai bool adalah false
- menambahkan pengujian nilai bool lain

### **Perulangan**

<p style="text-align: justify">For merupakan fungsi yang digunakan untuk mengulang sebuah proses yang sudah diketahui jumlahnya.</p>

#### For
- diketahui berapakali perulangan terjadi
- memerlukan nilai awal
- memerlukan nilai bool, jika true maka perulangan dilanjutkan
- memerlukan pengubah nilai

#### While
- tidak diketahui berapa kali perulangan terjadi
- memerlukan nilai bool, jika true maka perulangan dilanjutkan

#### Do-While
- mengubah bentuk while
- proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true


### **Break dan Continue**
<p style="text-align: justify">Break digunakan untuk mengakhiri sebuah eksekusi kontrol perulangan. Continue digunakan untuk melompati sebuah perulangan yang sudah ditentukan dan melanjutkan perulangan kembali.</p>

- perulangan menggunakan nilai bool untuk lanjut atau berhenti
- Break dan Continue dapat menghentikan perulangan dengan mengabaikan nilai bool
- Continue dapat menghentikan suatu proses

#### Perbedaan Break dengan Continue
Break, menghentikan seluruh proses perulangan
<br>
Continue, menghentikan satu kali proses perulangan 

### **Fungsi**
<p style="text-align: justify">Fungsi atau Function adalah kode program yang dirancang untuk menyelesaikan sebuah tugas tertentu, dan merupakan bagian dari program utama.</p>

#### Membuat fungsi
```
// tipe_data nama_fungsi()
void main()
    // perintah yang dijalankan saat fungsi dipanggil
    print('halo');
}
```
#### Memanggil fungsi
```
void main(){ 
    halo();
}
```
#### Fungsi dengan Parameter
```
// tipe_data nama fungsi(tipe_data parameter)
void tampil(String teks){

    // perintah yang dijalankan saat fungsi dipanggil
    print(teks);
}

void main(){

    tampil("Halo");
}
```

#### Fungsi dengan Return
```
// tipe_data nama_fungsi(tipe_data nama_parameter)
int jumlah(int a, int b){
    return a + b;
}

void main(){

    var hasil = jumlah(1,2);
    print(hasil);
}
```