# (17) Form Input Button

## Data diri

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **Advance Form Input**
### Interactive Widget
- Interaksi antara aplikasi dan user
- Mengumpulkan input dan feedback dari user

### **Date Picker**
- Widget dimana user bisa memasukan tanggal
- Tanggal kelahiran, waktu pemesanan tiket, waktu reservasi restoran, jadwal meeting dll

Cara membuat Date Picker :
- Menggunakan fungsi bawaan flutter showDatePicker
- Fungsi showDatePicker memiliki tipe data future
- Menampilkan dialog material design date picker

Basic kode :
```
final selectData = await showDatePicker(
    context : context,
    initialDate : currentDate,
    firstDate : DateTime(1990),
    lastDate : DateTime(currentDate.year+5)
); 
```

Menambahkan packages intl di pubspec.yaml
```
dependencies :
    intl : ^0.17.0
```

Mempersiapkan variabel
```
class _HomePageState extends State<HomePage>{
    DateTime _dueDate = DateTime.now();
    final currentDate = DateTime.now();
}
```

Membuat UI
```
Widget buildDatePicker(BuildContext context){
    return Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children : [
            Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children : [
                    const Text("Date"),
                    TextButton(
                        child : const Text("Select");
                        onPressed : (){}
                    ),
                ],
            ),
            Text(DateFormat('dd-MM-yyyy').format(_dueDate))
        ]
    );
}
```

Menambahkan fungsi showDatePicker di dalam onPressed 
```
onPressed () async {
    final selectDate = await showDatePicker(
        context : context,
        initialDate : currentDate,
        firstDate : DateTime(1990),
        lastDate : DateTime(currentDate.year+5)
    );
}
```

Memanggil fungsi setState di dalam onPressed
```
setState((){
    if (selectDate != null){
        _dueDate = selectDate;
    }
})
```

### **Color Picker**
- Widget dimana user bisa memilih color
- Penggunaan color picker bisa digunakan untuk berbagai macam kondisi

Cara membuat color picker :
- menggunakan packages flutter_colorpicker
- menambahkan packages flutter_colorpicker di pubspec.yaml
    ```
    dependencies :
        flutter_colorpicker = ^1.0.3
    ```
- mempersiapkan variabel
    ```
    Color _currentColor = Colors.orange
    ```
- membuat UI
    ```
    Widget buildColorPicker(BuildContext context){
        return Column(
            crossAxisAlignment : CrossAxisAlignment.start,
            children : [
                const Text("Color"),
                Container(
                    height : 100,
                    width : double.infinity,
                    color : _currentColor
                ),
                ElevatedButton(
                    style : ButtonStyle(
                        backgroundColor : MaterialStateProperty.all(_currentColor)
                    ),
                    child : const Text("Pick Color"),
                    onPressed(){}
                )
            ]
        );
    }
    ```
- menambahkan fungsi showDialog di dalam onPressed dengan return widget AlertDialog
    ```
    onPressed: (){
        showDialog(
            context : context,
            builder : (context){
                return AlertDialog(
                    title : const Text("Pick Your Color"),
                    actions : [
                        TextButton(
                            onPressed : (){
                                Navigator.pop(context);
                            },
                            child : const Text("Save")
                        )
                    ]
                )
            }
        )
    }
    ````

- import packages flutter_colorpicker dalam file dart
    ```
    import 'package:flutter_colorpicker/flutter_colorpicker.dart';
    ```
- membuat kode untuk penggunaan packages flutter_colorpicker
    ```
    return AlertDialog(
        title : const Text("Pick Your Color"),
        content : BlockPicker(
            pickerColor : _currentColor,
            onColorChanged : (color){
                setState(){
                    _currentColor = color;
                }
            }
        )
    )
    ```

### **File Picker**
- Widget untuk mengakses storage
- memilih dan membuka file

Cara membuat File Picker :
- menggunakan packages file_picker dan open_file
- menambahkan packages file_picker dan open_file ke pubscpec.yaml
    ```
    dependecies :
        file_picker : ^4.3.3
        open_file : ^3.2.1
    ```
- import packages file_picker dan open_file dalam file dart
    ```
    import 'package:open_file/open_file.dart';
    import 'package:file_picker/file_picker.dart';
    ```
- membangun UI
    ```
    Widget buildFilePicker(){
        return Colomn(
            crossAxisAlignment : CrossAxisAlignment.start,
            children : [
                const Text("Pick Files"),
                Center(
                    child : ElevatedButton(
                        child : const Text("Pick and open file")
                    onPressed : (){}
                    )
                )
            ]
        )
    }
    ```

- Membuat fungsi untuk mengexplore dan memilih files dari storage
    ```
    void _pickFile() async {
        final result = await FilePicker.platform.pickFiles();
        if (result == null) return;
    }
    ```
- memanggil fungsi _pickFile di dalam onPressed
    ```
    onPressed : (){
        _pickFile();
    }
    ```
- membuat fungsi untuk membuka file yang telah dipilih 
    ```
    void _openFile (PlatformFile file){
        OpenFile.open(file.path);
    }
    ```

- mengambil file dari object result dan memanggil fungsi _openFile di dalam fungsi _pickFile
    ```
    void _pickFile() async {
        final result = await FilePicker.platform.pickFiles();
        if (result == null) return;
    }
    final file = result.file.first;
    _openFile(file);
    }
    ```