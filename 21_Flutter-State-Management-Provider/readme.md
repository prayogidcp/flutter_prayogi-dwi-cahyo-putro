# (21) Flutter State Management (Provider)

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **State**
Data yang dapat dibaca saat pembuatan widget, dapat berubah saat widget aktif dan hanya dimiliki oleh StatefullWidget

Kenapa perlu Global State?
agar antara widget dapat memanfaatkan state yang sama dengan mudah

Memanfaatkan State
- dibuat sebagai property dari class
- digunakan pada widget saat build
```
// property
var number = 0;

// build
Text("$number");
```

Mengubah State :

menggunakan method setState 
```
ElevatedButton(
    child : const Text("Tambah"),
    onPressed : (){
        setState(){
            number = number + 1;
        }
    }
)
```

### **Global State**
State biasa yang dapat digunakan pada seluruh widget

### **Provider**
- State Management
- Perlu diinstall agar dapat digunakan

Instalasi Provider
- Menambahkan package provider pada bagian dependecies dalam file pubspec.yaml
    ```
    dependencies :
        provider : any
    ```
- jalankan perintah flutter pub get
    ```
    $ flutter pub get
    ```

Membuat State Provider 
- Buat file bernama Contact.dart
- Definisikan state dalam bentuk class
    ```
    import"package:flutter/material.dart";
    class Contact with ChangeNotifier{
        List<Map<String, String>> _contacts = [];
        List<Map<String, String>> get contacts => _contacts;

        void add (Map<String, String> contact){
            _contacts.add(contact);
            notifyListeners();
        }
    }
    ```

Mendaftarkan State Provider
- Import dalam file main.dart
- Daftarkan pada runApp dengan MultiProvider
    ```
    import"package:flutter/material.dart";
    import"package:provider/provider.dart";
    import"package:phonebookapp/stores/contact.dart as contact_store";
    
    void main(){
        runApp(
            MultiProvider(
                provider: [
                    ChangeNotifierProvider(create : (_) => contact_store.Contact()) 
                ],
                child : MyWidget()
            )
    }
    ```

Menggunakan State dari Provider
- Simpan provider dalam variabel
- Ambil data dari provider melalui getter
    ```
    final contactProvider = Provider.of<contact_store.Contact>(context);

    ListView.builder(
        itemCount : contactProvider.contacts.lenght,
        itemBuilder : (context, index){
            return ListTile(
                title : Text(contactProvider.contacts[index]['name']?? ''),
                subtitle : Text(contactProvider.contacts[index]['phone']?? '')
            );
        }
    );
    ```