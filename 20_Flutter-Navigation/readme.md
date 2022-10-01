# (20) Flutter Navigation

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **Apa itu Navigation**
Navigation adalah sebuah cara, proses, atau metode untuk berpindah dari halaman satu ke halaman lain. Navigation biasanya terjadi ketika terdapat interaksi pada halaman sebelumnya, misalnya tombol sehingga perlu beralih ke halaman lain. Navigation sangat penting untuk diperhatikan dalam pengembangan aplikasi karena berhubungan langsung dengan routing pages dan juga alur dari aplikasi itu sendiri.

### **Navigation Dasar**
Terdapat beberapa navigation dasar pada Flutter, beberapa di antaranya adalah sebagai berikut : 

1. Navigator Push
    
    Navigator.push() digunakan untuk perpindahan halaman
    ```
    class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('Home Screen'),
        ),
        body: Center(
            child: ElevatedButton(
            child: const Text('Go To About Page'),
            onPressed: () {
                Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (_) => AboutScreen(),
                )
                );
            }
            )
        ),
        );
    }
    }
    ```
2. Navigator Pop 
    
    Navigator.pop() digunakan untuk kembali ke halaman sebelumnya
    ```
    class AboutScreen extends StatelessWidget {
    const AboutScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('About Screen'),
        ),
        );
    }
    }
    ```

Menggunakan parameter pada constructur halaman
```
ElevatedButton(
  child: const Text('Go To About Page'),
  onPressed: () {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const AboutScreen(parameter: 'Hore'),
      )
    );
  }
)
```

```
class AboutScreen extends StatelessWidget {
  final String parameter;
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return . . .;
  }
}
```

### **Navigation dengan Named Routes**
Navigation ini memanfaatkan halaman-halaman yang tiap halaman tersebut memiliki alamat yang disebut dengan route. Beberapa method untuk navigation dengan named routes adalah sebagai berikut.

1. Navigator pushNamed
    
    Navigator.pushNamed() digunakan untuk perpindahan halaman.
2. Navigator pop

    Navigator.pop() digunakan untuk kembali ke halaman sebelumnya.

untuk mendaftarkan route dapat dilakukan dengan menambahkan initialRoute dan routes pada MaterialApp. Tiap route tersebut adalah fungsi yang membentuk halaman.

```
MaterialApp(
  debugShowCheckedModeBanner: false,

  initialRoute: '/',

  routes: {
    '/': (_) => const HomeScreen(),
    '/about': (_) => const AboutScreen(),
  },
)
```

Perpindahan halaman :
```
ElevatedButton(
  child: const Text('Go To About Page'),
  onPressed: () {
    Navigator.of(context).pushNamed('/about');
  }
)
```

Mengirim data ke halaman baru :
```
ElevatedButton(
  child: const Text('Go To About Page'),
  onPressed: () {
    Navigator.of(context).pushNamed(
      '/about',
			arguments: 'Hore',
    );
  }
)
```

```
class AboutScreen extends StatelessWidget {
	. . .

  @override
  Widget build(BuildContext context) {
		final parameter = ModalRoute.of(context)!.settings.arguments as String;

    return . . .;
  }
}
```