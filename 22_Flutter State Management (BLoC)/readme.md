# (22) Flutter State Management (BLoC)

## Data diri 

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **Declarative UI**
Flutter memiliki sifat declarative yang artinya flutter membangun UInya pada screen untuk mencerminkan keadaan state saat ini
```
UI = f(state)
```

State
State adalah ketika sebuah widget sedang aktif dan widget tersebut minyampan data di memori flutter akan membangun ulang UInya ketika ada state atau data yang berubah, ada 2 jenis state dalam flutter yaitu : 
- Ephemeral State

    Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, contohnya : 
    - PageView
    - ButtomNavigationBar
    - SwitchButton
    
    Tidap perlu state management yang kompleks, karena hanya membutuhkan StatefullWidget dengan menggunakan fungsi setState()
- App State

    Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya :
    - Login info
    - Pengaturan preferensi pengguna
    - Keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda

Pendekatan State Management
- setState

    Lebih cocok penggunaannya pada ephemeral state
- Provider

    Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari

- BLoC

    Menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logicnya

### **Provider**
Class yang perlu diperhatikan dalam penggunaan Provider yaitu :

Dari Package Provider :
- ChangeNotifierProvider
    - Widget yang membungkus sebuah class
    - Mengimplementasikan ChangeNotifier dan menggunakan child untuk widget UInya
    - Menggunakan create, provider yang akan menyimpan model yang telah dibuat
    ```
    ChangeNotifierProvider(
        create : (context) => MyModel(),
        child : <widget>
    );
- MultiProvider

    Jika membutuhkan lebih dari satu provider
    ```
    MultiProvider(
        providers : [
            Provider<MyModel>(create : (_) => Something()),
            Provider<MyDatabase>(create : (_) => SomethingMore())
        ],
        child : <widget>
    )
    ```
- Consumer
    - Widget yang mendengarkan perubahan kelas yang mengimplementasikan ChangeNotifier
    - Membangun ulang widget yang dibungkus Consumber saja
    - Penting untuk meletakan Consumer pada lingkup sekecil mungkin
    - Membutuhkan properti builder yang berisi context, model dan child
    ```
    Consumer<MyModel>(
        builder : (context, model, child){
            return Text("Hello ${model.value}");
        }
    );
    ```

Build In Class dari Flutter SDK :
- Change Notifier
    - Class yang menambah dan menghapus listener
    - Digunakan dengan cara meng-extends
    - Memanggil notifyListeners(), fungsi yang memberitahu widget yang menggunakan state bahwa terjadi perubahan data sehingga UInya harus dibangun ulang
    ```
    class CartManager extends ChangeNotifier{}
    ```

### **BLoC**
- BLoC merupakan Business Logic Component)
- Memisahkan antara business logic dengan UI

Cara kerja BLoC :
- Menerima event sebagai input
- Dianalisa dan dikelola di dalam BLoC
- Menghasilkan state sebagai output

Stream :
- Rangkaian proses secara asynchronous
- Actor utama di dalam BLoC