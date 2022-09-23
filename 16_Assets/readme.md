# (16) Assets

## Data diri

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **Assets**
Merupakan file yang di bundled dan di deployed bersamaan dengan aplikasi, Tipe-tipe assets seperti : 
- Static data (JSON Files)
- icons
- images
- font file (ttf)

Menentukan asssets :
- untuk Flutter menggunakan pubspec.yaml
- pubscpec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi
    ```
    assets :
    - assets/my_icon.png
    - assets/background.jpg
    ```
- gunakan "/" untuk memasukan semua assets dibawah satu directory name
    ```
    assets :
    - assets/
    ```
### **Image**
Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik, Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIF, PNG, BMP dan WBMP.

Loading Images :

- Menggunakan Widget Image dan membutuhkan properti image dengan nilai class AssetImage()

    ```
    <!-- pastikan assets/background.jpg sudah teridentifikasi pada pubspec.yaml -->

    Image(
        image : AssetImage("assets/background.jpg")
        )
    ```
- Menggunakan method Image.asset untuk mendapatkan image yang sudah ditambahkan dalam project
    ```
    <!-- pastikan assets/background.jpg sudah teridentifikasi pada pubspec.yaml -->

    Image.asset("assets/background.jpg")
    ```
- Menggunakan method Image.network untuk mendapatkan data image melalui internet dengan menggunakan string url.
    ```
    <!-- jika menggunakan Image.network tidak memerlukan identifikasi pada pubspec.yaml -->

    Image.network("https://picsum.photos/id/231/200/300")
    ```

### **Font**
Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi, penentuan font yang akan digunakan biasanya oleh UI Designer, penerapan font menggunakan custom font atau dari package

Custom Font :
1. Siapkan font yang akan digunakan atau dapat cari dan download dari (https://fonts.google.com/)
2. Import file font.ttf 
3. Daftarkan font pada pubspec.yaml
    ```
    fonts :
    - family: Schyler
        fonts:
        - asset: fonts/Schyler-Regular.ttf
    ```
4. Mengatur font sebagai default
    ```
    MaterialApp(
        theme : ThemeData(
            fontFamily : 'Schyler'
        )
    )
    ```
5. Menggunakan font di spesifik Widget
    ```
    Text(
        "Prayogi", 
        style : TextStyle(
            fontFamily : 'Schyler'
        )
    )
    ```

### **Font dari Package**
1. Tambahkan package google_fonts di dependencies pada pubspec.yaml
    ```
    dependencies :
        google_fonts : ^2.2.0
    ```
2. Import package di file dart
    ```
    import 'package:google_fonts/google_fonts.dart';
    ```
3. Gunakan font dengan memanggil GoogleFonts.namaFont()
    ```
    Text(
        "Prayogi",
        style : GoogleFonts.rowdies(fontSize : 30)
    )
    ```
