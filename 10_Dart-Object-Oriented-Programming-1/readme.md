# (10) Dart Object Oriented Programming
## Data diri 
### NO. URUT : 1_017FLC_30
### NAMA : PRAYOGI DWI CAHYO PUTRO
#
## Summary
### **Object Oriented Programming** 
suatu metode pemrograman yang berorientasi pada objek (OOP)
Program disusun dalam bentuk abstraksi object yang dapat menghasilkan atribut atau property yang relavan saja dan menyembunyikan detailnya.

Keuntungan :
- Mudah di-Troubleshoot, jika terjadi error pada program kita bisa mengetahui letak error tanpa memeriksa baris per baris setiap kode.
- Mudah digunakan ulang.

Penggunaan :

Dart dan berbagai bahasa pemrograman lainna seperti :
- C++
- Java
- Javascript
- Python

Komponen OOP :
- Class, 
<br>merupakan abstraksi dari sebuah benda (object). memiliki ciri-ciri yang disebut property dan memiliki sifat serta kemampuan yang disebut dengan method.
<br>Membuat Class :
    1.  Menggunakan kata kunci **Class**
    2.  Memiliki nama serta diawali huruf besar
    3.  Setiap property dan methodnya diletakan dalam kurawal
- Object
<br>Membuat Object :
    1. Bentuk sebenernya dari class
    2. Disebut juga instance of class
    3. Diperlakukan seperti data
- Property
<br>Ciri-ciri suatu class, hal yang dimiliki suatu class untuk menggambarkan suatu objek serta memiliki sifat seperti variabel.
<br>Membuat Property :
    1. Property di letakan dalam sebuah class
    2. Tidak bisa meletakan property di luar class
    3. Property bisa diakses seperti variabel tetapi melalui sebuah objek
    ```
    class Hewan{
        var mata = 0;
        var kaki = 0;
    }
    
    void main(){
        var h1 = Hewan();
        print(h1.mata);
    }
    ```
- Method
<br>Merupakan sifat atau perilaku suatu class, seperti aktivitas yang dapat dikerjakan suatu class. Memiliki sifat seperti fungsi
- Inheritance
- Generics
