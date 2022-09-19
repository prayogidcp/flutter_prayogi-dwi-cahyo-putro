# (14) Flutter Command Line Interface (CLI) and Flutter package management
## Data diri 
### NO. URUT : 1_017FLC_30
### NAMA : PRAYOGI DWI CAHYO PUTRO
#
## Summary
### **Fluter CLI**
Merupakan alat yang digunakan untuk berinteraksi dengan Flutter SDK dan perintah dijalankan dalam terminal

Important CLI Commands :
- Flutter Doctor, untuk menampilkan informasi software yang dibutuhkan Flutter.
```
flutter doctor
```
- Flutter Create, untuk membuat project aplikasi Flutter baru di directory tertentu.
```
flutter create <namaproject>
```
- Flutter Run, untuk menjalankan project aplikasi di device yang tersedia.
```
flutter file <dart_file>
```
- Flutter Emulator, untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru.
```
<!-- untuk menampilkan emulator -->
flutter emulator 
```
```
<!-- untuk menjalankan emulator -->
flutter emulator --launch <emulator-id>
```
```
<!-- untuk membuat emulator -->
flutter emulator --create --name <nama-emulator>
```
- Flutter Channel, untuk menampilkan daftar flutter channel yang tersedia dan menunjukan channel yang digunakan saat ini.
```
flutter channel
```
- Flutter Pub, ada 2 syntax pada flutter pub yaitu :
    - flutter pub add, untuk menambahkan packages ke dependencies yang ada di pubspec.yaml
        ```
        flutter pub add <nama-package>
        ```
    - flutter pub get, untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml
        ```
        flutter pub get
        ```
- Flutter Build, untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStore dll.
```
flutter build <directory>
```
- Flutter Clean, untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator, perintah ini akan memperkecil ukuran project tsb.
```
flutter clean
```

### **Packages Management**
- Flutter mendukung sharing packages
- Packages dibuat developers lain
- Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch
- Mendapatkan packages di website pub.dev

Cara menambahkan Packages :
- Cari package di <a herf="https://pub.dev/">pub.dev</a>
- Copy baris dependencies yang ada di bagian installing
- Buka pubspec.yaml
- Paste barisnya dibawah dependencies pubspec.yaml
- Run flutter pub get di terminal
- Import package di file dart agar bisa digunakan
- Stop atau restart aplikasi jika dibutuhkan