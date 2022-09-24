# (17) Form Input Button

## Data diri

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **Flutter Form**
Merupakan sebuah form yang menerima isiian data dari pengguna dan dapat lebih dari satu.

Membuat form :
- Menggunakan Statefull Widget
- keadaan form disimpan menggunakan GlobalKey<FormState>
    ```
    GlobalKey formKey = GlobalKey<FormState>();

    Form(
        key : formKey,
        child : inputWidget
    );
    ```

### **Input**
1. Text Field, merupakan text control yang memungkinkan pengguna menginput teks singkat. menerima isian data dari pengguna dan isian dapat lebih dari satu.

    Membuat TextField :
    - data diambil menggunakan TextEditingController
    - isian berupa teks
        ```
        TextEditingController inputController = TextEditingController();

        TextField(
            controller : inputController
        );
        ```

2. Radio, dapat memberikan opsi pada pengguna dan hanya dapat memilih satu opsi
    
    Membuat Radio :
    
    dapat diambil menggunakan property dengan tipe data sesuai dengan value pada radio
    ```
    var radiovalue = "";

    Radio<String>(
        value : "Laki-laki"
        groupValue : radioValue,
        onChanged : (String? value){
            setState(){
                radioValue = value ?? '';
            });
        },
    );
    ```

3. Checkbox, Memberikan opsi pada pengguna dan dapat memilih beberapa opsi

    Membuat Checkbox :

    data yang diambil menggunakan property bertipe bool
    ```
    bool checkValue = false;

    Checkbox(
        value: checkValue,
        onChanged : (bool? value){
            setState(){
                checkValue = value ?? false;
            });
        },
    );
    ```

4. DropdownButton, memberikan opsi pada pengguna, pengguna hanya dapat memilih satu opsi dan opsi hanya akan ditampilkan jika ditekan.
    
    Membuat DropdownButton :

    data diambil menggunakan property dengan tipe data sesuai value pada DropdownMenuItem
    ```
    var DropdownValue = 0;

    DropdownButton(
        value: dropdownValue,
            items: const [
                DropdownMenuItem(
                    value: 0,
                    child: Text("Pilih")),
                DropdownMenuItem(
                    value: 2,
                    child: Text("Satu")),
                DropdownMenuItem(
                    value: 3,
                    child: Text("Dua")),
                DropdownMenuItem(
                    value: 3,
                    child: Text("Tiga")),  
                ],
            onChanged: (value) {
                setState() {
                    dropdownValue = value ?? 0;
                }
            },
    );
    ```

5. Button, merupakan tombol yang dapat melakukan sesuatu jika ditekan
    - ElevatedButton, jika ditekan akan menjalankan onPressed
        ```
        ElevatedButton(
            child : const Text("Submit"),
            onPressed : (){}
        );
        ```
    - IconButton, tombol yang berbentuk icon, jika ditekan akan menjalankan onPressed
        ```
        IconButton(
            icon : const Icon(Icons.add),
            onPressed : (){}
        );
        ```
