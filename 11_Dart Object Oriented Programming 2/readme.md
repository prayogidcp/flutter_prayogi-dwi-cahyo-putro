# (11) Dart Object Oriented Programming 2
## Data diri 
### NO. URUT : 1_017FLC_30
### NAMA : PRAYOGI DWI CAHYO PUTRO
#
## Summary
### **Object Oriented Programming 2**
####  Constructor
Merupakan fungsi atau method yang dijalankan saat pembuatan object. Constructor dapat menerima parameter namun tidak memiliki return.

#### Inheritance
Merupakan kemampuan suatau program untuk membuat class baru dengan memanfaatkan class yang sudah ada. Inheritance bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru. Untuk melakukan Inheritance perlu menambahkan "extends".

#### Method Overriding
Merupakan kemampuan untuk menuliskan ulang method yang ada pada super-class. Tujuan Method Overriding agar class memiliki method yang sama, dengan proses yang berbeda. Untuk melakukan Overriding memelurakan :
- Melakukan Inheritance pada class yg dilakukan
- Method sudah ada class induk
- Method ditulis ulang seperti membuat method baru pada class anak
- Ditambahkan tanda @override di baris sebelum method dibuat

#### Interface
Interface merupakan class yang dapat menunjukan method apa saja yang ada pada suatu class, seluruh method wajib override dan Interface digunakan dengan menggunakan implements. Interface sekilas mirip Inheritance. Pada class yang melakukan implements wajib melakukan override semua method yang ada pada class induk.

#### Abstract Class
Abstract class merupakan class abstrak yang artinya kelas ini hanya gambaran umum dari sebuah class dan tidak bisa dibuat sebagai objek secara langsung namun class ini dapat menurunkan semua property dan method method nya yang dimiliki class abstract tersebut kita bisa menggunakan class dengan ekstensi class tersebut dan semua method tidak harus di override

#### Polymorphism
Merupakan kemampuan suatu objek berubah menjadi bentuk lain tipe data yang dapat digunakan pada super class dan dapat dilakukan pada class dengan ekstends atau implements

#### Generics
- Dapat digunakan pada class atau fungsi
- memberi kemampuan agar dapat menerima data dengan tipe data yang berbeda
- tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi.
